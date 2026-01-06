

using Test


a = 0
function foo()
    global a = 1
end
foo()
@test a == 1

function bar()
    global b = 6
end
bar()
@test b == 6

global c = 9
@test c == 9
c = 10
@test c == 10

global d::Int = 10
@test d == 10
global d = 11
@test d == 11

global e::Int = 12
@test e == 12
global e = 13.0
@test e == 13.0

x = 0

function fun1()
    global x = 1
end

fun1()
@test x == 1

function fun2()
    x = 2
end
fun2()
@test x == 1

global y::Int = 10
@test y == 10

function fun3()
    global y = 20
end
fun3()
@test y == 20
function fun4()
    y = 30
end
fun4()
@test y == 20

function fun5()
    global z = 100
end
fun5()
@test z == 100
