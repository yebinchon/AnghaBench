
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_9__ {scalar_t__ base; scalar_t__ idx; int ofs; int scale; } ;
struct TYPE_11__ {TYPE_1__ mrm; } ;
struct TYPE_10__ {scalar_t__ o; int op2; int op1; scalar_t__ i; } ;
typedef int RegSet ;
typedef scalar_t__ Reg ;
typedef TYPE_2__ IRIns ;
typedef int GCstr ;
typedef TYPE_3__ ASMState ;


 TYPE_2__* IR (int ) ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_STRREF ;
 int LJ_64 ;
 scalar_t__ RID_NONE ;
 int XM_SCALE1 ;
 scalar_t__ irref_isk (int ) ;
 int lua_assert (int) ;
 scalar_t__ mayfuse (TYPE_3__*,int ) ;
 scalar_t__ ra_alloc1 (TYPE_3__*,int ,int ) ;
 int rset_clear (int ,scalar_t__) ;

__attribute__((used)) static void asm_fusestrref(ASMState *as, IRIns *ir, RegSet allow)
{
  IRIns *irr;
  lua_assert(ir->o == IR_STRREF);
  as->mrm.base = as->mrm.idx = RID_NONE;
  as->mrm.scale = XM_SCALE1;
  as->mrm.ofs = sizeof(GCstr);
  if (irref_isk(ir->op1)) {
    as->mrm.ofs += IR(ir->op1)->i;
  } else {
    Reg r = ra_alloc1(as, ir->op1, allow);
    rset_clear(allow, r);
    as->mrm.base = (uint8_t)r;
  }
  irr = IR(ir->op2);
  if (irref_isk(ir->op2)) {
    as->mrm.ofs += irr->i;
  } else {
    Reg r;

    if (!LJ_64 &&
 mayfuse(as, ir->op2) && irr->o == IR_ADD && irref_isk(irr->op2)) {
      as->mrm.ofs += IR(irr->op2)->i;
      r = ra_alloc1(as, irr->op1, allow);
    } else {
      r = ra_alloc1(as, ir->op2, allow);
    }
    if (as->mrm.base == RID_NONE)
      as->mrm.base = (uint8_t)r;
    else
      as->mrm.idx = (uint8_t)r;
  }
}
