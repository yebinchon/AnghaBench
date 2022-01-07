
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_11__ {scalar_t__ i; } ;
struct TYPE_8__ {void* base; int ofs; void* idx; } ;
struct TYPE_10__ {TYPE_1__ mrm; } ;
struct TYPE_9__ {scalar_t__ o; size_t op2; int op1; } ;
typedef int RegSet ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 TYPE_7__* IR (int ) ;
 scalar_t__ IR_FLOAD ;
 scalar_t__ IR_FREF ;
 void* RID_NONE ;
 int * field_ofs ;
 scalar_t__ irref_isk (int ) ;
 int lua_assert (int) ;
 scalar_t__ ra_alloc1 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void asm_fusefref(ASMState *as, IRIns *ir, RegSet allow)
{
  lua_assert(ir->o == IR_FLOAD || ir->o == IR_FREF);
  as->mrm.ofs = field_ofs[ir->op2];
  as->mrm.idx = RID_NONE;
  if (irref_isk(ir->op1)) {
    as->mrm.ofs += IR(ir->op1)->i;
    as->mrm.base = RID_NONE;
  } else {
    as->mrm.base = (uint8_t)ra_alloc1(as, ir->op1, allow);
  }
}
