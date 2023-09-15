<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-3">
            <h3><a href="/Beauty">prinees</a></h3>
        </div>
        <div class="col-md-6">
            
        </div>
        <div class="col-md-3">
            <c:if test="${not empty userObj}">
                <a href="AdminHome.jsp" class="btn btn-success"><i class="fas fa-user"></i> ${userObj.name}</a>
                <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa-solid fa-arrow-up-right-from-square"></i> Log Out</a>
            </c:if>

            <c:if test="${empty userObj}">
                <a href="../Login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
                <a href="../Register.jsp" class="btn btn-primary"><i class="fa-solid fa-user-plus"></i> Register</a>
            </c:if>   

        </div>
    </div>
</div>


<!--logout modal-->


<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Are You Sure ?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Log Out ?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">No, Cancel</button>
                <a href="../logout" type="button"  class="btn btn-primary">Yes, Please</a>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/Beauty/Admin/AdminHome.jsp"><i class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span></a>
            </li>

        </ul>

    </div>
</nav>