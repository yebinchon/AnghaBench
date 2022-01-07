
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_10__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_27__ {scalar_t__ hi; scalar_t__ lo; } ;
struct TYPE_31__ {TYPE_1__ u32; } ;
struct TYPE_30__ {int* mcp; int freeset; } ;
struct TYPE_29__ {int flags; scalar_t__ func; } ;
struct TYPE_28__ {scalar_t__ o; int i; int t; int r; } ;
struct TYPE_26__ {int u64; } ;
typedef int Reg ;
typedef int MCode ;
typedef scalar_t__ IRRef ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ CCallInfo ;
typedef TYPE_4__ ASMState ;


 scalar_t__ ASMREF_TMP1 ;
 int CCI_CC_CDECL ;
 int CCI_CC_FASTCALL ;
 int CCI_CC_MASK ;
 int CCI_CC_THISCALL ;
 int CCI_VARARG ;
 int CCI_XNARGS (TYPE_3__ const*) ;
 TYPE_2__* IR (scalar_t__) ;
 scalar_t__ IR_KINT ;
 scalar_t__ IR_KINT64 ;
 scalar_t__ IR_KNULL ;
 scalar_t__ LJ_32 ;
 scalar_t__ LJ_GC64 ;
 void* REGARG_FIRSTFPR ;
 int REGARG_GPRS ;
 int REGARG_LASTFPR ;
 int REX_64 ;
 int RID2RSET (int) ;
 int RID_EAX ;
 int RID_ESP ;
 int RID_MAX_GPR ;
 int RSET_FPR ;
 int RSET_GPR ;
 int STACKARG_OFS ;
 int XI_MOVrib ;
 int XO_MOVDto ;
 int XO_MOVSDto ;
 int XO_MOVSSto ;
 int checkmclim (TYPE_4__*) ;
 int emit_call (TYPE_4__*,scalar_t__) ;
 int emit_loadi (TYPE_4__*,int,int) ;
 int emit_loadu64 (TYPE_4__*,int,int ) ;
 int emit_movmroi (TYPE_4__*,int ,int,int) ;
 int emit_movrr (TYPE_4__*,TYPE_2__*,int,int ) ;
 int emit_movtomro (TYPE_4__*,int,int ,int) ;
 int emit_rmro (TYPE_4__*,int ,int,int ,int) ;
 int emit_rr (TYPE_4__*,int ,int,int) ;
 TYPE_10__* ir_k64 (TYPE_2__*) ;
 TYPE_8__* ir_knum (TYPE_2__*) ;
 scalar_t__ irref_isk (scalar_t__) ;
 scalar_t__ irt_isfloat (int ) ;
 scalar_t__ irt_isfp (int ) ;
 scalar_t__ irt_isnum (int ) ;
 int lua_assert (int) ;
 int ra_alloc1 (TYPE_4__*,scalar_t__,int ) ;
 int ra_allocref (TYPE_4__*,scalar_t__,int ) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_noweak (TYPE_4__*,int ) ;
 int rset_test (int ,int) ;

__attribute__((used)) static void asm_gencall(ASMState *as, const CCallInfo *ci, IRRef *args)
{
  uint32_t n, nargs = CCI_XNARGS(ci);
  int32_t ofs = STACKARG_OFS;







  uint32_t gprs = 0;
  if ((ci->flags & CCI_CC_MASK) != CCI_CC_CDECL) {
    if ((ci->flags & CCI_CC_MASK) == CCI_CC_THISCALL)
      gprs = (REGARG_GPRS & 31);
    else if ((ci->flags & CCI_CC_MASK) == CCI_CC_FASTCALL)
      gprs = REGARG_GPRS;
  }

  if ((void *)ci->func)
    emit_call(as, ci->func);
  for (n = 0; n < nargs; n++) {
    IRRef ref = args[n];
    IRIns *ir = IR(ref);
    Reg r;
    if (ref && irt_isfp(ir->t)) {
      r = 0;
    } else {
      r = gprs & 31; gprs >>= 5;
      if (!ref) continue;
    }

    if (r) {
      if (r < RID_MAX_GPR && ref < ASMREF_TMP1) {





   emit_loadi(as, r, ir->i);
      } else {
 lua_assert(rset_test(as->freeset, r));
 if (ra_hasreg(ir->r)) {
   ra_noweak(as, ir->r);
   emit_movrr(as, ir, r, ir->r);
 } else {
   ra_allocref(as, ref, RID2RSET(r));
 }
      }
    } else if (irt_isfp(ir->t)) {
      lua_assert(!(irt_isfloat(ir->t) && irref_isk(ref)));
      if (LJ_32 && (ofs & 4) && irref_isk(ref)) {

 emit_movmroi(as, RID_ESP, ofs, (int32_t)ir_knum(ir)->u32.lo);
 emit_movmroi(as, RID_ESP, ofs+4, (int32_t)ir_knum(ir)->u32.hi);
      } else {
 r = ra_alloc1(as, ref, RSET_FPR);
 emit_rmro(as, irt_isnum(ir->t) ? XO_MOVSDto : XO_MOVSSto,
    r, RID_ESP, ofs);
      }
      ofs += (LJ_32 && irt_isfloat(ir->t)) ? 4 : 8;
    } else {
      if (LJ_32 && ref < ASMREF_TMP1) {
 emit_movmroi(as, RID_ESP, ofs, ir->i);
      } else {
 r = ra_alloc1(as, ref, RSET_GPR);
 emit_movtomro(as, REX_64 + r, RID_ESP, ofs);
      }
      ofs += sizeof(intptr_t);
    }
    checkmclim(as);
  }



}
