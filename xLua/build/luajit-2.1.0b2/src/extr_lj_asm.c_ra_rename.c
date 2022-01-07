
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_14__ {TYPE_1__* T; int ir; int J; int snapno; scalar_t__* cost; int freeset; } ;
struct TYPE_13__ {int s; void* r; } ;
struct TYPE_12__ {int ir; } ;
typedef size_t Reg ;
typedef int IRRef ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 TYPE_2__* IR (int ) ;
 int IRT (int ,int ) ;
 int IRT_NIL ;
 int IR_RENAME ;
 int RA_DBGX (TYPE_3__*) ;
 size_t RID_MAX_GPR ;
 int SPS_NONE ;
 int emit_movrr (TYPE_3__*,TYPE_2__*,size_t,size_t) ;
 int lj_ir_emit (int ) ;
 int lj_ir_set (int ,int ,int ,int ) ;
 int lua_assert (int) ;
 int ra_free (TYPE_3__*,size_t) ;
 int ra_hasspill (int ) ;
 int ra_modified (TYPE_3__*,size_t) ;
 int ra_noweak (TYPE_3__*,size_t) ;
 int regcost_ref (scalar_t__) ;
 int rset_clear (int ,size_t) ;
 scalar_t__ rset_test (int ,size_t) ;
 int tref_ref (int ) ;

__attribute__((used)) static void ra_rename(ASMState *as, Reg down, Reg up)
{
  IRRef ren, ref = regcost_ref(as->cost[up] = as->cost[down]);
  IRIns *ir = IR(ref);
  ir->r = (uint8_t)up;
  as->cost[down] = 0;
  lua_assert((down < RID_MAX_GPR) == (up < RID_MAX_GPR));
  lua_assert(!rset_test(as->freeset, down) && rset_test(as->freeset, up));
  ra_free(as, down);
  ra_modified(as, down);
  rset_clear(as->freeset, up);
  ra_noweak(as, up);
  RA_DBGX((as, "rename    $f $r $r", regcost_ref(as->cost[up]), down, up));
  emit_movrr(as, ir, down, up);
  if (!ra_hasspill(IR(ref)->s)) {
    lj_ir_set(as->J, IRT(IR_RENAME, IRT_NIL), ref, as->snapno);
    ren = tref_ref(lj_ir_emit(as->J));
    as->ir = as->T->ir;
    IR(ren)->r = (uint8_t)down;
    IR(ren)->s = SPS_NONE;
  }
}
