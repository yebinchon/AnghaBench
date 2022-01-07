
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int lua_State ;
struct TYPE_4__ {scalar_t__ hmask; } ;
typedef TYPE_1__ GCtab ;


 scalar_t__ lj_fls (scalar_t__) ;
 int lj_tab_resize (int *,TYPE_1__*,scalar_t__,scalar_t__) ;

void lj_tab_reasize(lua_State *L, GCtab *t, uint32_t nasize)
{
  lj_tab_resize(L, t, nasize+1, t->hmask > 0 ? lj_fls(t->hmask)+1 : 0);
}
