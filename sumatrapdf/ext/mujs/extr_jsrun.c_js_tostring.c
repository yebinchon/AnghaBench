
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 char const* jsV_tostring (int *,int ) ;
 int stackidx (int *,int) ;

const char *js_tostring(js_State *J, int idx)
{
 return jsV_tostring(J, stackidx(J, idx));
}
