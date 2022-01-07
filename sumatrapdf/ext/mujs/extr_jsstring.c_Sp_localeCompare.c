
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 char* checkstring (int *,int ) ;
 int js_pushnumber (int *,int ) ;
 char* js_tostring (int *,int) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static void Sp_localeCompare(js_State *J)
{
 const char *a = checkstring(J, 0);
 const char *b = js_tostring(J, 1);
 js_pushnumber(J, strcmp(a, b));
}
