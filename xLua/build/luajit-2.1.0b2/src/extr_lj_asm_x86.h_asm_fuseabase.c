
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {int ofs; } ;
struct TYPE_10__ {TYPE_1__ mrm; } ;
struct TYPE_9__ {scalar_t__ o; scalar_t__ op1; scalar_t__ op2; int i; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_2__ IRIns ;
typedef int GCtab ;
typedef TYPE_3__ ASMState ;


 TYPE_2__* IR (scalar_t__) ;
 scalar_t__ IRFL_TAB_ARRAY ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_FLOAD ;
 int IR_NEWREF ;
 scalar_t__ IR_TNEW ;
 scalar_t__ LJ_MAX_COLOSIZE ;
 scalar_t__ irref_isk (scalar_t__) ;
 int lua_assert (int) ;
 int neverfuse (TYPE_3__*) ;
 scalar_t__ noconflict (TYPE_3__*,scalar_t__,int ,int) ;

__attribute__((used)) static IRRef asm_fuseabase(ASMState *as, IRRef ref)
{
  IRIns *irb = IR(ref);
  as->mrm.ofs = 0;
  if (irb->o == IR_FLOAD) {
    IRIns *ira = IR(irb->op1);
    lua_assert(irb->op2 == IRFL_TAB_ARRAY);

    if (ira->o == IR_TNEW && ira->op1 <= LJ_MAX_COLOSIZE &&
 !neverfuse(as) && noconflict(as, irb->op1, IR_NEWREF, 1)) {
      as->mrm.ofs = (int32_t)sizeof(GCtab);
      return irb->op1;
    }
  } else if (irb->o == IR_ADD && irref_isk(irb->op2)) {

    as->mrm.ofs = IR(irb->op2)->i;
    return irb->op1;
  }
  return ref;
}
