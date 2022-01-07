
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int lua_Number ;
typedef int cTValue ;
struct TYPE_19__ {scalar_t__ nomm; int metatable; } ;
typedef int TValue ;
typedef TYPE_2__ GCtab ;


 int LJ_ERR_NANIDX ;
 int LJ_ERR_NILIDX ;
 int LJ_ERR_OPINDEX ;
 int LJ_ERR_SETLOOP ;
 scalar_t__ LJ_LIKELY (int) ;
 int LJ_MAX_IDXCHAIN ;
 int MM_newindex ;
 int copyTV (TYPE_1__*,int *,int *) ;
 scalar_t__ intV (int *) ;
 int lj_cont_nop ;
 int lj_err_msg (TYPE_1__*,int ) ;
 int lj_err_optype (TYPE_1__*,int *,int ) ;
 int lj_gc_anybarriert (TYPE_1__*,TYPE_2__*) ;
 int * lj_meta_fast (TYPE_1__*,int ,int ) ;
 int * lj_meta_lookup (TYPE_1__*,int *,int ) ;
 int * lj_tab_get (TYPE_1__*,TYPE_2__*,int *) ;
 int * lj_tab_newkey (TYPE_1__*,TYPE_2__*,int *) ;
 int mmcall (TYPE_1__*,int ,int *,int *,int *) ;
 int * niltv (TYPE_1__*) ;
 int setnumV (int *,int ) ;
 TYPE_2__* tabV (int *) ;
 int tabref (int ) ;
 scalar_t__ tvisfunc (int *) ;
 scalar_t__ tvisint (int *) ;
 scalar_t__ tvisnan (int *) ;
 scalar_t__ tvisnil (int *) ;
 scalar_t__ tvisnum (int *) ;
 int tvistab (int *) ;

TValue *lj_meta_tset(lua_State *L, cTValue *o, cTValue *k)
{
  TValue tmp;
  int loop;
  for (loop = 0; loop < LJ_MAX_IDXCHAIN; loop++) {
    cTValue *mo;
    if (LJ_LIKELY(tvistab(o))) {
      GCtab *t = tabV(o);
      cTValue *tv = lj_tab_get(L, t, k);
      if (LJ_LIKELY(!tvisnil(tv))) {
 t->nomm = 0;
 lj_gc_anybarriert(L, t);
 return (TValue *)tv;
      } else if (!(mo = lj_meta_fast(L, tabref(t->metatable), MM_newindex))) {
 t->nomm = 0;
 lj_gc_anybarriert(L, t);
 if (tv != niltv(L))
   return (TValue *)tv;
 if (tvisnil(k)) lj_err_msg(L, LJ_ERR_NILIDX);
 else if (tvisint(k)) { setnumV(&tmp, (lua_Number)intV(k)); k = &tmp; }
 else if (tvisnum(k) && tvisnan(k)) lj_err_msg(L, LJ_ERR_NANIDX);
 return lj_tab_newkey(L, t, k);
      }
    } else if (tvisnil(mo = lj_meta_lookup(L, o, MM_newindex))) {
      lj_err_optype(L, o, LJ_ERR_OPINDEX);
      return ((void*)0);
    }
    if (tvisfunc(mo)) {
      L->top = mmcall(L, lj_cont_nop, mo, o, k);

      return ((void*)0);
    }
    copyTV(L, &tmp, mo);
    o = &tmp;
  }
  lj_err_msg(L, LJ_ERR_SETLOOP);
  return ((void*)0);
}
