
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int JS_HNUMBER ;
 scalar_t__ isnan (double) ;
 scalar_t__ js_isstring (int *,int) ;
 double js_tonumber (int *,int) ;
 int js_toprimitive (int *,int,int ) ;
 int js_tostring (int *,int) ;
 int strcmp (int ,int ) ;

int js_compare(js_State *J, int *okay)
{
 js_toprimitive(J, -2, JS_HNUMBER);
 js_toprimitive(J, -1, JS_HNUMBER);

 *okay = 1;
 if (js_isstring(J, -2) && js_isstring(J, -1)) {
  return strcmp(js_tostring(J, -2), js_tostring(J, -1));
 } else {
  double x = js_tonumber(J, -2);
  double y = js_tonumber(J, -1);
  if (isnan(x) || isnan(y))
   *okay = 0;
  return x < y ? -1 : x > y ? 1 : 0;
 }
}
