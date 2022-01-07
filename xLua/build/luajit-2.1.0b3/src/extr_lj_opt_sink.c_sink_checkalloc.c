
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_5__ {scalar_t__ o; int op1; int op2; } ;
typedef TYPE_1__ IRIns ;


 TYPE_1__* IR (int ) ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_AREF ;
 scalar_t__ IR_CNEW ;
 scalar_t__ IR_FREF ;
 scalar_t__ IR_HREF ;
 scalar_t__ IR_HREFK ;
 scalar_t__ IR_NEWREF ;
 scalar_t__ IR_TDUP ;
 scalar_t__ IR_TNEW ;
 int irref_isk (int ) ;

__attribute__((used)) static IRIns *sink_checkalloc(jit_State *J, IRIns *irs)
{
  IRIns *ir = IR(irs->op1);
  if (!irref_isk(ir->op2))
    return ((void*)0);
  if (ir->o == IR_HREFK || ir->o == IR_AREF)
    ir = IR(ir->op1);
  else if (!(ir->o == IR_HREF || ir->o == IR_NEWREF ||
      ir->o == IR_FREF || ir->o == IR_ADD))
    return ((void*)0);
  ir = IR(ir->op1);
  if (!(ir->o == IR_TNEW || ir->o == IR_TDUP || ir->o == IR_CNEW))
    return ((void*)0);
  return ir;
}
