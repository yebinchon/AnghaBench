
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_construct (int *,int) ;
 int js_copy (int *,int) ;
 int js_currentfunction (int *) ;
 int js_getindex (int *,int,int) ;
 int js_getlength (int *,int) ;
 int js_getproperty (int *,int,char*) ;
 int js_gettop (int *) ;
 int js_remove (int *,int) ;

__attribute__((used)) static void constructbound(js_State *J)
{
 int top = js_gettop(J);
 int i, fun, args, n;

 fun = js_gettop(J);
 js_currentfunction(J);
 js_getproperty(J, fun, "__TargetFunction__");

 args = js_gettop(J);
 js_getproperty(J, fun, "__BoundArguments__");
 n = js_getlength(J, args);
 for (i = 0; i < n; ++i)
  js_getindex(J, args, i);
 js_remove(J, args);

 for (i = 1; i < top; ++i)
  js_copy(J, i);

 js_construct(J, n + top - 1);
}
