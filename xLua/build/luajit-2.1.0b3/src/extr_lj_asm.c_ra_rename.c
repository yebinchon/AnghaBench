
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_13__ {int snapno; scalar_t__* cost; int freeset; } ;
struct TYPE_12__ {int s; scalar_t__ r; } ;
typedef size_t Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (int ) ;
 int RA_DBGX (TYPE_2__*) ;
 size_t RID_MAX_GPR ;
 int emit_movrr (TYPE_2__*,TYPE_1__*,size_t,size_t) ;
 int lua_assert (int) ;
 int ra_addrename (TYPE_2__*,size_t,int ,int ) ;
 int ra_free (TYPE_2__*,size_t) ;
 int ra_hasspill (int ) ;
 int ra_modified (TYPE_2__*,size_t) ;
 int ra_noweak (TYPE_2__*,size_t) ;
 int regcost_ref (scalar_t__) ;
 int rset_clear (int ,size_t) ;
 scalar_t__ rset_test (int ,size_t) ;

__attribute__((used)) static void ra_rename(ASMState *as, Reg down, Reg up)
{
  IRRef ref = regcost_ref(as->cost[up] = as->cost[down]);
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
    ra_addrename(as, down, ref, as->snapno);
  }
}
