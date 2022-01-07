
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int JS_HNONE ;
 int js_endtry (int *) ;
 int js_free (int *,char*) ;
 scalar_t__ js_isstring (int *,int) ;
 char* js_malloc (int *,scalar_t__) ;
 int js_pop (int *,int) ;
 int js_pushnumber (int *,double) ;
 int js_pushstring (int *,char*) ;
 int js_throw (int *) ;
 double js_tonumber (int *,int) ;
 int js_toprimitive (int *,int,int ) ;
 char* js_tostring (int *,int) ;
 scalar_t__ js_try (int *) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

void js_concat(js_State *J)
{
 js_toprimitive(J, -2, JS_HNONE);
 js_toprimitive(J, -1, JS_HNONE);

 if (js_isstring(J, -2) || js_isstring(J, -1)) {
  const char *sa = js_tostring(J, -2);
  const char *sb = js_tostring(J, -1);

  char *sab = js_malloc(J, strlen(sa) + strlen(sb) + 1);
  strcpy(sab, sa);
  strcat(sab, sb);
  if (js_try(J)) {
   js_free(J, sab);
   js_throw(J);
  }
  js_pop(J, 2);
  js_pushstring(J, sab);
  js_endtry(J);
  js_free(J, sab);
 } else {
  double x = js_tonumber(J, -2);
  double y = js_tonumber(J, -1);
  js_pop(J, 2);
  js_pushnumber(J, x + y);
 }
}
