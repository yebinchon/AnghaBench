
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int cTValue ;
struct TYPE_20__ {int freeset; scalar_t__* phireg; } ;
struct TYPE_19__ {size_t r; scalar_t__ o; int t; int i; } ;
struct TYPE_18__ {int u64; } ;
typedef size_t Reg ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (scalar_t__) ;
 scalar_t__ IR_KGC ;
 scalar_t__ IR_KINT ;
 scalar_t__ IR_KINT64 ;
 scalar_t__ IR_KKPTR ;
 scalar_t__ IR_KNULL ;
 scalar_t__ IR_KNUM ;
 scalar_t__ IR_KPRI ;
 scalar_t__ IR_KPTR ;
 size_t RID_MAX_GPR ;
 int RSET_FPR ;
 int RSET_GPR ;
 int emit_loadi (TYPE_2__*,size_t,int ) ;
 int emit_loadn (TYPE_2__*,size_t,int *) ;
 int emit_loadu64 (TYPE_2__*,size_t,int ) ;
 int emit_movrr (TYPE_2__*,TYPE_1__*,size_t,size_t) ;
 TYPE_10__* ir_kint64 (TYPE_1__*) ;
 int * ir_knum (TYPE_1__*) ;
 scalar_t__ irref_isk (scalar_t__) ;
 scalar_t__ irt_isphi (int ) ;
 int iscrossref (TYPE_2__*,scalar_t__) ;
 int lua_assert (int) ;
 size_t ra_allocref (TYPE_2__*,scalar_t__,int) ;
 int ra_hashint (size_t) ;
 int ra_modified (TYPE_2__*,size_t) ;
 scalar_t__ ra_noreg (size_t) ;
 int ra_noweak (TYPE_2__*,size_t) ;
 int ra_rename (TYPE_2__*,size_t,size_t) ;
 int ra_sethint (size_t,size_t) ;
 scalar_t__ tvispzero (int *) ;

__attribute__((used)) static void ra_left(ASMState *as, Reg dest, IRRef lref)
{
  IRIns *ir = IR(lref);
  Reg left = ir->r;
  if (ra_noreg(left)) {
    if (irref_isk(lref)) {
      if (ir->o == IR_KNUM) {
 cTValue *tv = ir_knum(ir);

 if (tvispzero(tv) || !(as->freeset & RSET_FPR)) {
   emit_loadn(as, dest, tv);
   return;
 }





      } else if (ir->o != IR_KPRI) {
 lua_assert(ir->o == IR_KINT || ir->o == IR_KGC ||
     ir->o == IR_KPTR || ir->o == IR_KKPTR || ir->o == IR_KNULL);
 emit_loadi(as, dest, ir->i);
 return;
      }
    }
    if (!ra_hashint(left) && !iscrossref(as, lref))
      ra_sethint(ir->r, dest);
    left = ra_allocref(as, lref, dest < RID_MAX_GPR ? RSET_GPR : RSET_FPR);
  }
  ra_noweak(as, left);

  if (dest != left) {

    if (irt_isphi(ir->t) && as->phireg[dest] == lref) {
      ra_modified(as, left);
      ra_rename(as, left, dest);
    } else {
      emit_movrr(as, ir, dest, left);
    }
  }
}
