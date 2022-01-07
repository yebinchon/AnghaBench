
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int ToPropertyDescriptor (int *,int ,int ,int ) ;
 int js_copy (int *,int) ;
 int js_isobject (int *,int) ;
 int js_toobject (int *,int) ;
 int js_tostring (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void O_defineProperty(js_State *J)
{
 if (!js_isobject(J, 1)) js_typeerror(J, "not an object");
 if (!js_isobject(J, 3)) js_typeerror(J, "not an object");
 ToPropertyDescriptor(J, js_toobject(J, 1), js_tostring(J, 2), js_toobject(J, 3));
 js_copy(J, 1);
}
