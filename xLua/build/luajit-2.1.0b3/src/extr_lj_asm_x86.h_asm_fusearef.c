
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_10__ {int ofs; void* idx; int scale; void* base; } ;
struct TYPE_12__ {TYPE_1__ mrm; } ;
struct TYPE_11__ {scalar_t__ o; int i; int op2; int op1; int r; } ;
typedef int RegSet ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 TYPE_2__* IR (int ) ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_AREF ;
 int LJ_64 ;
 void* RID_NONE ;
 int XM_SCALE8 ;
 int asm_fuseabase (TYPE_3__*,int ) ;
 scalar_t__ irref_isk (int ) ;
 int lua_assert (int) ;
 scalar_t__ mayfuse (TYPE_3__*,int ) ;
 scalar_t__ ra_alloc1 (TYPE_3__*,int ,int ) ;
 scalar_t__ ra_noreg (int ) ;
 int rset_clear (int ,void*) ;

__attribute__((used)) static void asm_fusearef(ASMState *as, IRIns *ir, RegSet allow)
{
  IRIns *irx;
  lua_assert(ir->o == IR_AREF);
  as->mrm.base = (uint8_t)ra_alloc1(as, asm_fuseabase(as, ir->op1), allow);
  irx = IR(ir->op2);
  if (irref_isk(ir->op2)) {
    as->mrm.ofs += 8*irx->i;
    as->mrm.idx = RID_NONE;
  } else {
    rset_clear(allow, as->mrm.base);
    as->mrm.scale = XM_SCALE8;



    if (!LJ_64 &&
 mayfuse(as, ir->op2) && ra_noreg(irx->r) &&
 irx->o == IR_ADD && irref_isk(irx->op2)) {
      as->mrm.ofs += 8*IR(irx->op2)->i;
      as->mrm.idx = (uint8_t)ra_alloc1(as, irx->op1, allow);
    } else {
      as->mrm.idx = (uint8_t)ra_alloc1(as, ir->op2, allow);
    }
  }
}
