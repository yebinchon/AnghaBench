
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int GCtab ;


 int niltv (int *) ;
 int rehashtab (int *,int *,int ) ;

void lj_tab_rehash(lua_State *L, GCtab *t)
{
  rehashtab(L, t, niltv(L));
}
