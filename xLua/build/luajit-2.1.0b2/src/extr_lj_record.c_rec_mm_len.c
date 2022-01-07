
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {TYPE_10__* L; int * base; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_13__ {int mobjv; int mobj; int tabv; int tab; } ;
struct TYPE_11__ {int * base; } ;
typedef int TValue ;
typedef int TRef ;
typedef TYPE_2__ RecordIndex ;
typedef int BCReg ;


 int IRCALL_lj_tab_len ;
 scalar_t__ LJ_52 ;
 int LJ_FR2 ;
 int LJ_TRERR_NOMM ;
 int MM_len ;
 int TREF_NIL ;
 int copyTV (TYPE_10__*,int *,int *) ;
 int lj_cont_ra ;
 int lj_ir_call (TYPE_1__*,int ,int ) ;
 int lj_record_call (TYPE_1__*,int,int) ;
 scalar_t__ lj_record_mm_lookup (TYPE_1__*,TYPE_2__*,int ) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int lua_assert (int) ;
 int rec_mm_prep (TYPE_1__*,int ) ;
 int setnilV (int *) ;
 scalar_t__ tref_istab (int ) ;

__attribute__((used)) static TRef rec_mm_len(jit_State *J, TRef tr, TValue *tv)
{
  RecordIndex ix;
  ix.tab = tr;
  copyTV(J->L, &ix.tabv, tv);
  if (lj_record_mm_lookup(J, &ix, MM_len)) {
    BCReg func = rec_mm_prep(J, lj_cont_ra);
    TRef *base = J->base + func;
    TValue *basev = J->L->base + func;
    lua_assert(!LJ_FR2);
    base[0] = ix.mobj; copyTV(J->L, basev+0, &ix.mobjv);
    base[1] = tr; copyTV(J->L, basev+1, tv);



    base[2] = TREF_NIL; setnilV(basev+2);

    lj_record_call(J, func, 2);
  } else {
    if (LJ_52 && tref_istab(tr))
      return lj_ir_call(J, IRCALL_lj_tab_len, tr);
    lj_trace_err(J, LJ_TRERR_NOMM);
  }
  return 0;
}
