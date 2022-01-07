
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsV_toboolean (int *,int ) ;
 int stackidx (int *,int) ;

int js_toboolean(js_State *J, int idx)
{
 return jsV_toboolean(J, stackidx(J, idx));
}
