
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_20__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int int32_t ;
struct TYPE_22__ {int ofs; void* idx; void* base; } ;
struct TYPE_25__ {int freeset; int modset; TYPE_1__ mrm; int J; } ;
struct TYPE_24__ {scalar_t__ o; int op2; scalar_t__ op1; int s; int t; int r; } ;
struct TYPE_23__ {int jit_base; } ;
typedef int RegSet ;
typedef int Reg ;
typedef scalar_t__ IRRef ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 TYPE_2__* IR (scalar_t__) ;
 scalar_t__ IRDELTA_L2S ;
 int IRSLOAD_CONVERT ;
 int IRSLOAD_FRAME ;
 int IRSLOAD_PARENT ;
 int IRT_I8 ;
 int IRT_U16 ;
 scalar_t__ IR_ALOAD ;
 scalar_t__ IR_FLOAD ;
 scalar_t__ IR_FSTORE ;
 scalar_t__ IR_HLOAD ;
 scalar_t__ IR_KINT64 ;
 scalar_t__ IR_KNUM ;
 scalar_t__ IR_RETF ;
 scalar_t__ IR_SLOAD ;
 scalar_t__ IR_ULOAD ;
 scalar_t__ IR_VLOAD ;
 scalar_t__ IR_XLOAD ;
 scalar_t__ IR_XSTORE ;
 TYPE_20__* J2G (int ) ;
 int LJ_FR2 ;
 scalar_t__ LJ_GC64 ;
 scalar_t__ REF_BASE ;
 scalar_t__ REF_NIL ;
 void* RID_DISPATCH ;
 void* RID_ESP ;
 int RID_MRM ;
 void* RID_NONE ;
 int RSET_EMPTY ;
 int RSET_FPR ;
 int RSET_GPR ;
 int asm_fuseahuref (TYPE_3__*,scalar_t__,int) ;
 int asm_fusefref (TYPE_3__*,TYPE_2__*,int) ;
 int asm_fuseloadk64 (TYPE_3__*,TYPE_2__*) ;
 int asm_fusexref (TYPE_3__*,scalar_t__,int) ;
 scalar_t__ dispofs (TYPE_3__*,int *) ;
 int emit_canremat (scalar_t__) ;
 scalar_t__ irt_isaddr (int ) ;
 scalar_t__ irt_isint (int ) ;
 scalar_t__ irt_isu32 (int ) ;
 int irt_typerange (int ,int ,int ) ;
 scalar_t__ iscrossref (TYPE_3__*,scalar_t__) ;
 int lua_assert (int) ;
 scalar_t__ mayfuse (TYPE_3__*,scalar_t__) ;
 scalar_t__ noconflict (TYPE_3__*,scalar_t__,scalar_t__,int ) ;
 int ptr2addr (int *) ;
 scalar_t__ ra_alloc1 (TYPE_3__*,scalar_t__,int) ;
 int ra_allocref (TYPE_3__*,scalar_t__,int) ;
 scalar_t__ ra_hasreg (int ) ;
 scalar_t__ ra_hasspill (int ) ;
 int ra_noweak (TYPE_3__*,int ) ;
 int ra_spill (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static Reg asm_fuseload(ASMState *as, IRRef ref, RegSet allow)
{
  IRIns *ir = IR(ref);
  if (ra_hasreg(ir->r)) {
    if (allow != RSET_EMPTY) {
      ra_noweak(as, ir->r);
      return ir->r;
    }
  fusespill:

    as->mrm.base = RID_ESP;
    as->mrm.ofs = ra_spill(as, ir);
    as->mrm.idx = RID_NONE;
    return RID_MRM;
  }
  if (ir->o == IR_KNUM) {
    RegSet avail = as->freeset & ~as->modset & RSET_FPR;
    lua_assert(allow != RSET_EMPTY);
    if (!(avail & (avail-1)))
      return asm_fuseloadk64(as, ir);
  } else if (ref == REF_BASE || ir->o == IR_KINT64) {
    RegSet avail = as->freeset & ~as->modset & RSET_GPR;
    lua_assert(allow != RSET_EMPTY);
    if (!(avail & (avail-1))) {
      if (ref == REF_BASE) {




 as->mrm.ofs = ptr2addr(&J2G(as->J)->jit_base);
 as->mrm.base = RID_NONE;

 as->mrm.idx = RID_NONE;
 return RID_MRM;
      } else {
 return asm_fuseloadk64(as, ir);
      }
    }
  } else if (mayfuse(as, ref)) {
    RegSet xallow = (allow & RSET_GPR) ? allow : RSET_GPR;
    if (ir->o == IR_SLOAD) {
      if (!(ir->op2 & (IRSLOAD_PARENT|IRSLOAD_CONVERT)) &&
   noconflict(as, ref, IR_RETF, 0) &&
   !(LJ_GC64 && irt_isaddr(ir->t))) {
 as->mrm.base = (uint8_t)ra_alloc1(as, REF_BASE, xallow);
 as->mrm.ofs = 8*((int32_t)ir->op1-1-LJ_FR2) +
        (!LJ_FR2 && (ir->op2 & IRSLOAD_FRAME) ? 4 : 0);
 as->mrm.idx = RID_NONE;
 return RID_MRM;
      }
    } else if (ir->o == IR_FLOAD) {

      if ((irt_isint(ir->t) || irt_isu32(ir->t) || irt_isaddr(ir->t)) &&
   noconflict(as, ref, IR_FSTORE, 0)) {
 asm_fusefref(as, ir, xallow);
 return RID_MRM;
      }
    } else if (ir->o == IR_ALOAD || ir->o == IR_HLOAD || ir->o == IR_ULOAD) {
      if (noconflict(as, ref, ir->o + IRDELTA_L2S, 0) &&
   !(LJ_GC64 && irt_isaddr(ir->t))) {
 asm_fuseahuref(as, ir->op1, xallow);
 return RID_MRM;
      }
    } else if (ir->o == IR_XLOAD) {



      if ((!irt_typerange(ir->t, IRT_I8, IRT_U16)) &&
   noconflict(as, ref, IR_XSTORE, 0)) {
 asm_fusexref(as, ir->op1, xallow);
 return RID_MRM;
      }
    } else if (ir->o == IR_VLOAD && !(LJ_GC64 && irt_isaddr(ir->t))) {
      asm_fuseahuref(as, ir->op1, xallow);
      return RID_MRM;
    }
  }
  if (ir->o == IR_FLOAD && ir->op1 == REF_NIL) {
    asm_fusefref(as, ir, RSET_EMPTY);
    return RID_MRM;
  }
  if (!(as->freeset & allow) && !emit_canremat(ref) &&
      (allow == RSET_EMPTY || ra_hasspill(ir->s) || iscrossref(as, ref)))
    goto fusespill;
  return ra_allocref(as, ref, allow);
}
