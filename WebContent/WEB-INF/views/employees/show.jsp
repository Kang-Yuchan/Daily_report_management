<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${employee != null}">
                <h2>Code No.${employee.code} Page </h2>

                <table>
                    <tbody>
                        <tr>
                            <th>Employee code</th>
                            <td><c:out value="${employee.code}" /></td>
                        </tr>
                        <tr>
                            <th>Name</th>
                            <td><c:out value="${employee.name}" /></td>
                        </tr>
                        <tr>
                            <th>Authority</th>
                            <td>
                                <c:choose>
                                    <c:when test="${employee.admin_flag == 1}">Administrator</c:when>
                                    <c:otherwise>General</c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <th>Created Date</th>
                            <td>
                                <fmt:formatDate value="${employee.created_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                        </tr>
                        <tr>
                            <th>Updated Data</th>
                            <td>
                                <fmt:formatDate value="${employee.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                        </tr>
                    </tbody>
                </table>

                <p><a href="<c:url value='/employees/edit?id=${employee.id}' />"></a></p>
            </c:when>
            <c:otherwise>
                <h2>Can not found data</h2>
            </c:otherwise>
        </c:choose>

        <p><a href="<c:url value='/employees/index' />">Back to list</a></p>
    </c:param>
</c:import>