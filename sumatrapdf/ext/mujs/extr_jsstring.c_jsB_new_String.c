
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_gettop (int *) ;
 int js_newstring (int *,char*) ;
 char* js_tostring (int *,int) ;

__attribute__((used)) static void jsB_new_String(js_State *J)
{
 js_newstring(J, js_gettop(J) > 1 ? js_tostring(J, 1) : "");
}
