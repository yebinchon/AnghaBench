
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;
struct TYPE_13__ {int metatable; } ;
typedef TYPE_2__ GCtab ;


 int LJ_ERR_GETLOOP ;
 int LJ_ERR_OPINDEX ;
 scalar_t__ LJ_LIKELY (int ) ;
 int LJ_MAX_IDXCHAIN ;
 int MM_index ;
 int lj_cont_ra ;
 int lj_err_msg (TYPE_1__*,int ) ;
 int lj_err_optype (TYPE_1__*,int *,int ) ;
 int * lj_meta_fast (TYPE_1__*,int ,int ) ;
 int * lj_meta_lookup (TYPE_1__*,int *,int ) ;
 int * lj_tab_get (TYPE_1__*,TYPE_2__*,int *) ;
 int mmcall (TYPE_1__*,int ,int *,int *,int *) ;
 TYPE_2__* tabV (int *) ;
 int tabref (int ) ;
 scalar_t__ tvisfunc (int *) ;
 scalar_t__ tvisnil (int *) ;
 int tvistab (int *) ;

cTValue *lj_meta_tget(lua_State *L, cTValue *o, cTValue *k)
{
  int loop;
  for (loop = 0; loop < LJ_MAX_IDXCHAIN; loop++) {
    cTValue *mo;
    if (LJ_LIKELY(tvistab(o))) {
      GCtab *t = tabV(o);
      cTValue *tv = lj_tab_get(L, t, k);
      if (!tvisnil(tv) ||
   !(mo = lj_meta_fast(L, tabref(t->metatable), MM_index)))
 return tv;
    } else if (tvisnil(mo = lj_meta_lookup(L, o, MM_index))) {
      lj_err_optype(L, o, LJ_ERR_OPINDEX);
      return ((void*)0);
    }
    if (tvisfunc(mo)) {
      L->top = mmcall(L, lj_cont_ra, mo, o, k);
      return ((void*)0);
    }
    o = mo;
  }
  lj_err_msg(L, LJ_ERR_GETLOOP);
  return ((void*)0);
}
