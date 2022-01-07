
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lua_State ;
struct TYPE_6__ {scalar_t__ hmask; } ;
typedef TYPE_1__ GCtab ;


 int clearapart (TYPE_1__*) ;
 int clearhpart (TYPE_1__*) ;
 TYPE_1__* newtab (int *,int ,int ) ;

GCtab *lj_tab_new(lua_State *L, uint32_t asize, uint32_t hbits)
{
  GCtab *t = newtab(L, asize, hbits);
  clearapart(t);
  if (t->hmask > 0) clearhpart(t);
  return t;
}
