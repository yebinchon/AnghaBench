
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {TYPE_10__* L; int * base; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_13__ {int mobjv; int mobj; int keyv; int tabv; int key; int tab; } ;
struct TYPE_11__ {int * base; } ;
typedef int TValue ;
typedef int TRef ;
typedef TYPE_2__ RecordIndex ;
typedef scalar_t__ MMS ;
typedef int BCReg ;


 int LJ_FR2 ;
 int LJ_TRERR_NOMM ;
 scalar_t__ MM_concat ;
 scalar_t__ MM_unm ;
 int copyTV (TYPE_10__*,int *,int *) ;
 int lj_cont_cat ;
 int lj_cont_ra ;
 int lj_record_call (TYPE_1__*,int,int) ;
 scalar_t__ lj_record_mm_lookup (TYPE_1__*,TYPE_2__*,scalar_t__) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int lua_assert (int) ;
 int rec_mm_prep (TYPE_1__*,int ) ;

__attribute__((used)) static TRef rec_mm_arith(jit_State *J, RecordIndex *ix, MMS mm)
{

  BCReg func = rec_mm_prep(J, mm == MM_concat ? lj_cont_cat : lj_cont_ra);
  TRef *base = J->base + func;
  TValue *basev = J->L->base + func;
  base[1] = ix->tab; base[2] = ix->key;
  copyTV(J->L, basev+1, &ix->tabv);
  copyTV(J->L, basev+2, &ix->keyv);
  if (!lj_record_mm_lookup(J, ix, mm)) {
    if (mm != MM_unm) {
      ix->tab = ix->key;
      copyTV(J->L, &ix->tabv, &ix->keyv);
      if (lj_record_mm_lookup(J, ix, mm))
 goto ok;
    }
    lj_trace_err(J, LJ_TRERR_NOMM);
  }
ok:
  lua_assert(!LJ_FR2);
  base[0] = ix->mobj;
  copyTV(J->L, basev+0, &ix->mobjv);
  lj_record_call(J, func, 2);
  return 0;
}
