
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int u64; } ;
struct TYPE_17__ {int freeset; } ;
struct TYPE_16__ {scalar_t__ o; int i; int t; int r; int s; } ;
typedef int Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 int ASMREF_L ;
 TYPE_1__* IR (int ) ;
 scalar_t__ IR_BASE ;
 scalar_t__ IR_KGC ;
 scalar_t__ IR_KINT ;
 scalar_t__ IR_KINT64 ;
 scalar_t__ IR_KKPTR ;
 scalar_t__ IR_KNULL ;
 scalar_t__ IR_KNUM ;
 scalar_t__ IR_KPRI ;
 scalar_t__ IR_KPTR ;
 int RA_DBGX (TYPE_2__*) ;
 int REF_BASE ;
 int RID_BASE ;
 int RID_INIT ;
 int cur_L ;
 scalar_t__ emit_canremat (int ) ;
 int emit_getgl (TYPE_2__*,int ,int ) ;
 int emit_loadi (TYPE_2__*,int ,int ) ;
 int emit_loadn (TYPE_2__*,int ,int ) ;
 int emit_loadu64 (TYPE_2__*,int ,int ) ;
 TYPE_8__* ir_kint64 (TYPE_1__*) ;
 int ir_knum (TYPE_1__*) ;
 int irt_isnil (int ) ;
 int jit_base ;
 int lua_assert (int) ;
 int ra_free (TYPE_2__*,int ) ;
 scalar_t__ ra_hasreg (int ) ;
 int ra_hasspill (int ) ;
 scalar_t__ ra_iskref (int ) ;
 int ra_krefk (TYPE_2__*,int ) ;
 int ra_krefreg (int ) ;
 int ra_modified (TYPE_2__*,int ) ;
 int ra_sethint (int ,int ) ;
 int rset_test (int ,int ) ;

__attribute__((used)) static Reg ra_rematk(ASMState *as, IRRef ref)
{
  IRIns *ir;
  Reg r;
  if (ra_iskref(ref)) {
    r = ra_krefreg(ref);
    lua_assert(!rset_test(as->freeset, r));
    ra_free(as, r);
    ra_modified(as, r);
    emit_loadi(as, r, ra_krefk(as, ref));
    return r;
  }
  ir = IR(ref);
  r = ir->r;
  lua_assert(ra_hasreg(r) && !ra_hasspill(ir->s));
  ra_free(as, r);
  ra_modified(as, r);
  ir->r = RID_INIT;
  RA_DBGX((as, "remat     $i $r", ir, r));

  if (ir->o == IR_KNUM) {
    emit_loadn(as, r, ir_knum(ir));
  } else

  if (emit_canremat(REF_BASE) && ir->o == IR_BASE) {
    ra_sethint(ir->r, RID_BASE);
    emit_getgl(as, r, jit_base);
  } else if (emit_canremat(ASMREF_L) && ir->o == IR_KPRI) {
    lua_assert(irt_isnil(ir->t));
    emit_getgl(as, r, cur_L);




  } else {
    lua_assert(ir->o == IR_KINT || ir->o == IR_KGC ||
        ir->o == IR_KPTR || ir->o == IR_KKPTR || ir->o == IR_KNULL);
    emit_loadi(as, r, ir->i);
  }
  return r;
}
