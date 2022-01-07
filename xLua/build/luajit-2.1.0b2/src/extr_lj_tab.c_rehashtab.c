
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;
typedef int cTValue ;
typedef int GCtab ;


 int LJ_MAX_ABITS ;
 int bestasize (int*,int*) ;
 int countarray (int *,int*) ;
 int counthash (int *,int*,int*) ;
 int countint (int *,int*) ;
 int hsize2hbits (int) ;
 int lj_tab_resize (int *,int *,int,int ) ;

__attribute__((used)) static void rehashtab(lua_State *L, GCtab *t, cTValue *ek)
{
  uint32_t bins[LJ_MAX_ABITS];
  uint32_t total, asize, na, i;
  for (i = 0; i < LJ_MAX_ABITS; i++) bins[i] = 0;
  asize = countarray(t, bins);
  total = 1 + asize;
  total += counthash(t, bins, &asize);
  asize += countint(ek, bins);
  na = bestasize(bins, &asize);
  total -= na;
  lj_tab_resize(L, t, asize, hsize2hbits(total));
}
