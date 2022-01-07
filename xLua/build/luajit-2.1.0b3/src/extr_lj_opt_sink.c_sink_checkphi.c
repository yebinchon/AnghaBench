
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ loopref; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_8__ {scalar_t__ o; scalar_t__ op2; scalar_t__ op1; int prev; int t; } ;
typedef scalar_t__ IRRef ;
typedef TYPE_2__ IRIns ;


 TYPE_2__* IR (scalar_t__) ;
 scalar_t__ IRCONV_NUM_INT ;
 scalar_t__ IR_CONV ;
 scalar_t__ REF_FIRST ;
 scalar_t__ irt_isphi (int ) ;
 int sink_phidep (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int sink_checkphi(jit_State *J, IRIns *ira, IRRef ref)
{
  if (ref >= REF_FIRST) {
    IRIns *ir = IR(ref);
    if (irt_isphi(ir->t) || (ir->o == IR_CONV && ir->op2 == IRCONV_NUM_INT &&
        irt_isphi(IR(ir->op1)->t))) {
      ira->prev++;
      return 1;
    }

    return ref < J->loopref && !sink_phidep(J, ref);
  }
  return 1;
}
