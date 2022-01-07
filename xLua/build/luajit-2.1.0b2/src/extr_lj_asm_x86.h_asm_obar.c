
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_24__ {scalar_t__ o; int r; } ;
struct TYPE_23__ {int J; } ;
struct TYPE_20__ {int marked; } ;
struct TYPE_22__ {TYPE_1__ gch; } ;
struct TYPE_21__ {int op2; int op1; } ;
typedef int Reg ;
typedef int MCLabel ;
typedef int IRRef ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ GCobj ;
typedef int CCallInfo ;
typedef TYPE_4__ ASMState ;


 int ASMREF_TMP1 ;
 int CC_Z ;
 int GChead ;
 int GCupval ;
 TYPE_9__* IR (int ) ;
 size_t IRCALL_lj_gc_barrieruv ;
 scalar_t__ IR_UREFC ;
 int J2G (int ) ;
 int LJ_GC_BLACK ;
 int LJ_GC_WHITES ;
 int RSET_GPR ;
 int RSET_SCRATCH ;
 int XO_GROUP3b ;
 int XOg_TEST ;
 int asm_gencall (TYPE_4__*,int const*,int *) ;
 int emit_i8 (TYPE_4__*,int ) ;
 int emit_label (TYPE_4__*) ;
 int emit_loada (TYPE_4__*,int ,int ) ;
 int emit_rma (TYPE_4__*,int ,int ,int *) ;
 int emit_rmro (TYPE_4__*,int ,int ,int ,scalar_t__) ;
 int emit_sjcc (TYPE_4__*,int ,int ) ;
 TYPE_3__* ir_kgc (TYPE_9__*) ;
 scalar_t__ irref_isk (int ) ;
 int * lj_ir_callinfo ;
 int lua_assert (int) ;
 int marked ;
 scalar_t__ offsetof (int ,int ) ;
 int ra_alloc1 (TYPE_4__*,int ,int ) ;
 int ra_evictset (TYPE_4__*,int) ;
 int ra_releasetmp (TYPE_4__*,int ) ;
 int rset_exclude (int,int ) ;
 int tv ;

__attribute__((used)) static void asm_obar(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_gc_barrieruv];
  IRRef args[2];
  MCLabel l_end;
  Reg obj;

  lua_assert(IR(ir->op1)->o == IR_UREFC);
  ra_evictset(as, RSET_SCRATCH);
  l_end = emit_label(as);
  args[0] = ASMREF_TMP1;
  args[1] = ir->op1;
  asm_gencall(as, ci, args);
  emit_loada(as, ra_releasetmp(as, ASMREF_TMP1), J2G(as->J));
  obj = IR(ir->op1)->r;
  emit_sjcc(as, CC_Z, l_end);
  emit_i8(as, LJ_GC_WHITES);
  if (irref_isk(ir->op2)) {
    GCobj *vp = ir_kgc(IR(ir->op2));
    emit_rma(as, XO_GROUP3b, XOg_TEST, &vp->gch.marked);
  } else {
    Reg val = ra_alloc1(as, ir->op2, rset_exclude(RSET_SCRATCH&RSET_GPR, obj));
    emit_rmro(as, XO_GROUP3b, XOg_TEST, val, (int32_t)offsetof(GChead, marked));
  }
  emit_sjcc(as, CC_Z, l_end);
  emit_i8(as, LJ_GC_BLACK);
  emit_rmro(as, XO_GROUP3b, XOg_TEST, obj,
     (int32_t)offsetof(GCupval, marked)-(int32_t)offsetof(GCupval, tv));
}
