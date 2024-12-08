<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS file -->
</head>
<style>
/* General Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f7fc;
    margin: 0;
    padding: 0;
}

.container {
    width: 100%;
    max-width: 400px;
    margin: 50px auto;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

/* Form Styles */
.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-size: 14px;
    color: #555;
}

input[type="email"], input[type="password"] {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
}

input[type="email"], input[type="password"] {
    width: 90%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
}

input[type="email"]:focus, input[type="password"]:focus {
    border-color: #0056b3;
    outline: none;
}

button {
margin-left:100px;
    width: 50%;
    padding: 12px;
    background-color: #0056b3;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background-color: #00409b;
}

/* Radio Button Style */
.text-center {
    text-align: center;
    margin-bottom: 20px;
}

input[type="radio"] {
    margin-right: 10px;
}

p {
    text-align: center;
    font-size: 14px;
}

a {
    color: #0056b3;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

</style>
<body>
    <div class="container">
        <h2 class="text-center">Student Login</h2>
        <form action="/checkstudentlogin" method="post">
            <div class="text-center">
                <label for="userType">Login as</label>
                <input type="radio" name="userType" id="facultyLogin"> Faculty
                <input type="radio" name="userType" id="studentLogin" checked> Student
                <input type="radio" name="userType" id="adminLogin"> Admin
            </div>

            <div class="form-group">
                <label for="semail">Email:</label>
                <input type="email" name="semail" id="semail" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="spwd">Password:</label>
                <input type="password" name="spwd" id="spwd" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>

        <p class="text-center">Don't have an account? <a href="/studentreg">Sign Up</a></p>

        <script>
            document.getElementById("facultyLogin").addEventListener("click", function() {
                window.location.href = "facultylogin.jsp"; // Redirect to faculty login
            });
            document.getElementById("adminLogin").addEventListener("click", function() {
                window.location.href = "adminLogin.jsp"; // Redirect to admin login
            });
        </script>
    </div>
</body>
</html>