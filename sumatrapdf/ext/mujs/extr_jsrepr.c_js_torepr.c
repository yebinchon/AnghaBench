
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_replace (int *,int) ;
 int js_repr (int *,int) ;
 char const* js_tostring (int *,int) ;

const char *js_torepr(js_State *J, int idx)
{
 js_repr(J, idx);
 js_replace(J, idx < 0 ? idx-1 : idx);
 return js_tostring(J, idx);
}
