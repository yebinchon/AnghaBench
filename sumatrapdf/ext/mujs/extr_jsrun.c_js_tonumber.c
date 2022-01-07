
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 double jsV_tonumber (int *,int ) ;
 int stackidx (int *,int) ;

double js_tonumber(js_State *J, int idx)
{
 return jsV_tonumber(J, stackidx(J, idx));
}
