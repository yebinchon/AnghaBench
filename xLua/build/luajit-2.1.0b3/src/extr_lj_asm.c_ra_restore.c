
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_14__ {int weakset; } ;
struct TYPE_13__ {int r; } ;
typedef int Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (int ) ;
 int RA_DBGX (TYPE_2__*) ;
 scalar_t__ emit_canremat (int ) ;
 int emit_spload (TYPE_2__*,TYPE_1__*,int ,int ) ;
 int lua_assert (int ) ;
 int ra_free (TYPE_2__*,int ) ;
 int ra_hasreg (int ) ;
 int ra_modified (TYPE_2__*,int ) ;
 int ra_rematk (TYPE_2__*,int ) ;
 int ra_sethint (int ,int ) ;
 int ra_spill (TYPE_2__*,TYPE_1__*) ;
 int rset_test (int ,int ) ;

__attribute__((used)) static Reg ra_restore(ASMState *as, IRRef ref)
{
  if (emit_canremat(ref)) {
    return ra_rematk(as, ref);
  } else {
    IRIns *ir = IR(ref);
    int32_t ofs = ra_spill(as, ir);
    Reg r = ir->r;
    lua_assert(ra_hasreg(r));
    ra_sethint(ir->r, r);
    ra_free(as, r);
    if (!rset_test(as->weakset, r)) {
      ra_modified(as, r);
      RA_DBGX((as, "restore   $i $r", ir, r));
      emit_spload(as, ir, r, ofs);
    }
    return r;
  }
}
