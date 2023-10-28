<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>JSP Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<%--navbar--%>
<%--<nav class="navbar navbar-expand-lg bg-light">--%>
<%--  <div class="container-fluid">--%>
<%--    <a class="navbar-brand" href="#">--%>
<%--      <img src="https://th.bing.com/th/id/OIP.nFn_mpOrmv-KNugzesNztwHaHa?w=176&h=180&c=7&r=0&o=5&dpr=2&pid=1.7" alt="Bootstrap" width="30" height="24">--%>
<%--    </a>--%>
<%--    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--      <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>
<%--    <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--      <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link active" aria-current="page" href="/">Home</a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" href="/employee/index">List employee</a>--%>
<%--        </li>--%>
<%--        &lt;%&ndash;        <li class="nav-item">&ndash;%&gt;--%>
<%--        &lt;%&ndash;          <a class="nav-link" href="/user/index">List User</a>&ndash;%&gt;--%>
<%--        &lt;%&ndash;        </li>&ndash;%&gt;--%>
<%--        &lt;%&ndash;        <li class="nav-item dropdown">&ndash;%&gt;--%>
<%--        &lt;%&ndash;          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">&ndash;%&gt;--%>
<%--        &lt;%&ndash;            Customer 2&ndash;%&gt;--%>
<%--        &lt;%&ndash;          </a>&ndash;%&gt;--%>
<%--        &lt;%&ndash;          <ul class="dropdown-menu">&ndash;%&gt;--%>
<%--        &lt;%&ndash;            <li><a class="dropdown-item" href="#">Action</a></li>&ndash;%&gt;--%>
<%--        &lt;%&ndash;            <li><a class="dropdown-item" href="#">Another action</a></li>&ndash;%&gt;--%>
<%--        &lt;%&ndash;            <li><hr class="dropdown-divider"></li>&ndash;%&gt;--%>
<%--        &lt;%&ndash;            <li><a class="dropdown-item" href="#">Something else here</a></li>&ndash;%&gt;--%>
<%--        &lt;%&ndash;          </ul>&ndash;%&gt;--%>
<%--        &lt;%&ndash;        </li>&ndash;%&gt;--%>
<%--        &lt;%&ndash;        <li class="nav-item">&ndash;%&gt;--%>
<%--        &lt;%&ndash;          <a class="nav-link disabled">Customer 3</a>&ndash;%&gt;--%>
<%--        &lt;%&ndash;        </li>&ndash;%&gt;--%>
<%--        &lt;%&ndash;      </ul>&ndash;%&gt;--%>
<%--        &lt;%&ndash;      <form class="d-flex" role="search">&ndash;%&gt;--%>
<%--        &lt;%&ndash;        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">&ndash;%&gt;--%>
<%--        &lt;%&ndash;        <button class="btn btn-outline-success" type="submit">Search</button>&ndash;%&gt;--%>
<%--        &lt;%&ndash;      </form>&ndash;%&gt;--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</nav>--%>
<%--End Nav--%>
<h1>Employee Manager</h1>
<div class="alert">
  <c:if test="${not empty message}">
    <div class="alert alert-success">${message}</div>
  </c:if>
  <c:if test="${not empty error}">
    <div class="alert alert-danger">${error}</div>
  </c:if>

</div>
<div class="container">
  <div class="row">
    <div class="col-12 d-flex justify-content-center align-items-center">
      <form class="col-6" action="/employee/index" method="post">

        <div class="input-group mb-3 input-group-sm">
          <span class="input-group-text" id="input-group-sizing-default">Employee ID</span>
          <input name="id" value="${employee.id}" type="text" class="form-control" >
        </div>


        <div class="input-group mb-3 input-group-sm">
          <span class="input-group-text" >Employee Name</span>
          <input name="name" value="${employee.name}" type="text" class="form-control">
        </div>


        <div class="input-group mb-3 input-group-sm">
          <span class="input-group-text">Date of Birth</span>
          <input name="birth" value="${employee.birth}" type="text" class="form-control">
        </div>


        <div class="input-group mb-3 input-group-sm">
          <span class="input-group-text">Address</span>
          <input name="phone" value="${employee.phone}" type="text" class="form-control">
        </div>

        <div class="input-group mb-3 input-group-sm">
          <span class="input-group-text">Position</span>
          <input name="phone" value="${employee.phone}" type="text" class="form-control">
        </div>

        <div class="input-group mb-3 input-group-sm">
          <span class="input-group-text">Department</span>
          <input name="phone" value="${employee.phone}" type="text" class="form-control">
        </div>

        <div >
          <button formaction="/employee/create"  class="btn btn-success">Create</button>
          <button formaction="/employee/update"  class="btn btn-warning">Update</button>
          <button formaction="/employee/delete"  class="btn btn-danger">Delete</button>
          <button formaction="/employee/reset"  class="btn btn-primary">Reset</button>
        </div>

      </form>
    </div>

    <div class="container mt-3">
      <h2>Employee Management</h2>
      <table class="table table-striped">
        <thead>
        <tr>
          <th>Employee ID</th>
          <th>Employee Name</th>
          <th>Date of birth</th>
          <th>Address</th>
          <th>Position</th>
          <th>Department</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="employee" items="${employees}">
          <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.birth}</td>
            <td>${employee.phone}</td>
            <td>${employee.position}</td>
            <td>${employee.deparment}</td>
            <td>
              <a href="/employee/edit/?id=${employee.id}">Edit</a>
              <a class="delete" href="/employee/delete/?id=${employee.id}">Delete</a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>