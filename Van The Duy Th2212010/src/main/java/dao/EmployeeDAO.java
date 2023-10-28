package dao;

import entity.Employee;
import utils.JpaUtils;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class EmployeeDAO {
    private EntityManager em = JpaUtils.getEntityManager();
    @Override
    protected  void finalize() throws Throwable{
        em.close();
        super.finalize();
    }

    public Employee create(Employee entity){
        try {
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();
            return entity;

        }catch (Exception e){
            e.printStackTrace();
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public Employee update(Employee entity){
        try {
            em.getTransaction().begin();
            em.merge(entity);//ham sua
            em.getTransaction().commit();
            return entity;

        }catch (Exception e){
            e.printStackTrace();
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public Employee remove(String id){
        try {
            em.getTransaction().begin();
            Employee entity = this.findById(id);
            em.remove(entity);//ham xoas
            em.getTransaction().commit();
            return entity;

        }catch (Exception e){
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public Employee findById(String id){
        return em.find(Employee.class, id);
    }

    //Tim theo quyen
//    public List<User> findByRole(boolean role){
//        String jpql = "Select o from employee o.admin:role";
//        TypedQuery<User>  query = em.createQuery(jpql, User.class);
//        return query.getResultList();
//    }
    //Tim theo keyword
    public List<Employee> findByKeyWord(String keyword){
        String jpql = "Select o from Employee o where  o.name like ?1";
        TypedQuery<Employee>  query = em.createQuery(jpql, Employee.class);
        query.setParameter(1, keyword);
        return query.getResultList();
    }
    // Aps dung tim nhung cai khac theo y

    //Tim kiem phan trang
    public List<Employee> findPage(int page, int size){
        String jpql = "Select o from Employee o";
        TypedQuery<Employee> query = em.createQuery(jpql, Employee.class);
        query.setFirstResult(page*size);
        query.setMaxResults(size);
        return query.getResultList();
    }

    //lấy hêt employee
    public List<Employee> findAll(){
        String jpql = "Select o from Employee o";
        TypedQuery<Employee> query = em.createQuery(jpql, Employee.class);
        return query.getResultList();
    }




}
