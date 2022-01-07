
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {scalar_t__ op1; scalar_t__ o; scalar_t__ op2; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ CCallInfo ;
typedef int ASMState ;


 int ASMREF_L ;
 int CCI_L ;
 int CCI_NARGS_MAX ;
 int CCI_XNARGS (TYPE_2__ const*) ;
 TYPE_1__* IR (scalar_t__) ;
 scalar_t__ IR_CARG ;
 scalar_t__ REF_NIL ;
 int lua_assert (int) ;

__attribute__((used)) static void asm_collectargs(ASMState *as, IRIns *ir,
       const CCallInfo *ci, IRRef *args)
{
  uint32_t n = CCI_XNARGS(ci);
  lua_assert(n <= CCI_NARGS_MAX*2);
  if ((ci->flags & CCI_L)) { *args++ = ASMREF_L; n--; }
  while (n-- > 1) {
    ir = IR(ir->op1);
    lua_assert(ir->o == IR_CARG);
    args[n] = ir->op2 == REF_NIL ? 0 : ir->op2;
  }
  args[0] = ir->op1 == REF_NIL ? 0 : ir->op1;
  lua_assert(IR(ir->op1)->o != IR_CARG);
}
