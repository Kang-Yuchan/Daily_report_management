<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${employee != null}">
                <h2>Edit Code No.${employee.code}</h2>
                <p>（Please insert when to change your password)</p>
                <form method="POST" action="<c:url value='/employees/update' />">
                    <c:import url="_form.jsp" />
                </form>

                <p><a href="#" onclick="confirmDestroy();">Delete</a></p>
                <form method="POST" action="<c:url value='/employees/destroy' />">
                    <input type="hidden" name="_token" value="${_token}" />
                </form>
                <script>
                    function confirmDestroy() {
                        if(confirm("Can I delete this page?")) {
                            document.forms[1].submit();
                        }
                    }
                </script>
            </c:when>
            <c:otherwise>
                <h2>Can not found data</h2>
            </c:otherwise>
        </c:choose>

        <p><a href="<c:url value='/employees/index' />">Back to list</a></p>
    </c:param>
</c:import>