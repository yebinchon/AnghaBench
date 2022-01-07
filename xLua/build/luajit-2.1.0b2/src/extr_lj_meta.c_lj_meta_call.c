
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int cTValue ;
typedef int TValue ;


 int LJ_FR2 ;
 int MM_call ;
 int copyTV (int *,int *,int *) ;
 int lj_err_optype_call (int *,int *) ;
 int * lj_meta_lookup (int *,int *,int ) ;
 int tvisfunc (int *) ;

void lj_meta_call(lua_State *L, TValue *func, TValue *top)
{
  cTValue *mo = lj_meta_lookup(L, func, MM_call);
  TValue *p;
  if (!tvisfunc(mo))
    lj_err_optype_call(L, func);
  for (p = top; p > func+2*LJ_FR2; p--) copyTV(L, p, p-1);
  if (LJ_FR2) copyTV(L, func+2, func);
  copyTV(L, func, mo);
}
