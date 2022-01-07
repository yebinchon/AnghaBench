
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int total; int threshold; } ;
struct TYPE_17__ {scalar_t__ gcsteps; int J; } ;
typedef int Reg ;
typedef int MCLabel ;
typedef int IRRef ;
typedef int CCallInfo ;
typedef TYPE_1__ ASMState ;


 int ASMREF_TMP1 ;
 int ASMREF_TMP2 ;
 int CC_B ;
 int CC_NE ;
 int GG_DISP2G ;
 size_t IRCALL_lj_gc_step_jit ;
 int J2G (int ) ;
 int REX_64 ;
 int REX_GC64 ;
 int RID_DISPATCH ;
 int RID_RET ;
 int RSET_SCRATCH ;
 int XO_ARITH (int ) ;
 int XO_LEA ;
 int XO_TEST ;
 int XOg_CMP ;
 int asm_gencall (TYPE_1__*,int const*,int *) ;
 int asm_guardcc (TYPE_1__*,int ) ;
 int checkmclim (TYPE_1__*) ;
 int emit_getgl (TYPE_1__*,int,int ) ;
 int emit_label (TYPE_1__*) ;
 int emit_loada (TYPE_1__*,int,int ) ;
 int emit_loadi (TYPE_1__*,int,scalar_t__) ;
 int emit_opgl (TYPE_1__*,int ,int,int ) ;
 int emit_rmro (TYPE_1__*,int ,int,int ,int ) ;
 int emit_rr (TYPE_1__*,int ,int ,int ) ;
 int emit_sjcc (TYPE_1__*,int ,int ) ;
 TYPE_4__ gc ;
 int * lj_ir_callinfo ;
 int ra_evictset (TYPE_1__*,int ) ;
 int ra_releasetmp (TYPE_1__*,int ) ;

__attribute__((used)) static void asm_gc_check(ASMState *as)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_gc_step_jit];
  IRRef args[2];
  MCLabel l_end;
  Reg tmp;
  ra_evictset(as, RSET_SCRATCH);
  l_end = emit_label(as);

  asm_guardcc(as, CC_NE);
  emit_rr(as, XO_TEST, RID_RET, RID_RET);
  args[0] = ASMREF_TMP1;
  args[1] = ASMREF_TMP2;
  asm_gencall(as, ci, args);
  tmp = ra_releasetmp(as, ASMREF_TMP1);



  emit_loada(as, tmp, J2G(as->J));

  emit_loadi(as, ra_releasetmp(as, ASMREF_TMP2), as->gcsteps);

  emit_sjcc(as, CC_B, l_end);
  emit_opgl(as, XO_ARITH(XOg_CMP), tmp|REX_GC64, gc.threshold);
  emit_getgl(as, tmp, gc.total);
  as->gcsteps = 0;
  checkmclim(as);
}
