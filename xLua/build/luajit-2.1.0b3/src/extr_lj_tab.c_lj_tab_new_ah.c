
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;
typedef scalar_t__ int32_t ;
typedef int GCtab ;


 int hsize2hbits (scalar_t__) ;
 int * lj_tab_new (int *,int ,int ) ;

GCtab *lj_tab_new_ah(lua_State *L, int32_t a, int32_t h)
{
  return lj_tab_new(L, (uint32_t)(a > 0 ? a+1 : 0), hsize2hbits(h));
}
