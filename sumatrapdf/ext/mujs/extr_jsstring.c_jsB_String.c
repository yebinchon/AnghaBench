
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_gettop (int *) ;
 int js_pushstring (int *,char*) ;
 char* js_tostring (int *,int) ;

__attribute__((used)) static void jsB_String(js_State *J)
{
 js_pushstring(J, js_gettop(J) > 1 ? js_tostring(J, 1) : "");
}
