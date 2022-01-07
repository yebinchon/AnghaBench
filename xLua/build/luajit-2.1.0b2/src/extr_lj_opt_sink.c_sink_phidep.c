
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_3__ {scalar_t__ op1; scalar_t__ op2; int t; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;


 TYPE_1__* IR (scalar_t__) ;
 scalar_t__ REF_FIRST ;
 scalar_t__ irt_isphi (int ) ;

__attribute__((used)) static int sink_phidep(jit_State *J, IRRef ref)
{
  IRIns *ir = IR(ref);
  if (irt_isphi(ir->t)) return 1;
  if (ir->op1 >= REF_FIRST && sink_phidep(J, ir->op1)) return 1;
  if (ir->op2 >= REF_FIRST && sink_phidep(J, ir->op2)) return 1;
  return 0;
}
