
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nins; } ;
struct TYPE_12__ {TYPE_1__ cur; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_13__ {int o; int t; scalar_t__ op2; scalar_t__ op1; int prev; } ;
typedef TYPE_3__ IRIns ;


 TYPE_3__* IR (scalar_t__) ;
 scalar_t__ IRFL_TAB_META ;






 int IR_CNEW ;



 int IR_HIOP ;




 int IR_TDUP ;
 int IR_TNEW ;



 int LJ_32 ;
 int LJ_HASFFI ;
 scalar_t__ REF_FIRST ;
 int irt_isguard (int ) ;
 int irt_ismarked (int ) ;
 int irt_isphi (int ) ;
 int irt_setmark (int ) ;
 TYPE_3__* sink_checkalloc (TYPE_2__*,TYPE_3__*) ;
 int sink_checkphi (TYPE_2__*,TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void sink_mark_ins(jit_State *J)
{
  IRIns *ir, *irlast = IR(J->cur.nins-1);
  for (ir = irlast ; ; ir--) {
    switch (ir->o) {
    case 141:
      return;
    case 140:
    case 143: case 134: case 129: case 131:
      irt_setmark(IR(ir->op1)->t);
      break;
    case 136:
      if (irt_ismarked(ir->t) || ir->op2 == IRFL_TAB_META)
 irt_setmark(IR(ir->op1)->t);
      break;
    case 142: case 133: case 135: case 128: {
      IRIns *ira = sink_checkalloc(J, ir);
      if (!ira || (irt_isphi(ira->t) && !sink_checkphi(J, ira, ir->op2)))
 irt_setmark(IR(ir->op1)->t);
      irt_setmark(IR(ir->op2)->t);
      break;
      }
    case 130:
      irt_setmark(IR(ir->op2)->t);
      break;



    case 139:
      irt_setmark(IR(ir->op1)->t);
      break;
    case 132: {
      IRIns *irl = IR(ir->op1), *irr = IR(ir->op2);
      irl->prev = irr->prev = 0;
      if (irl->o == irr->o &&
   (irl->o == IR_TNEW || irl->o == IR_TDUP ||
    (LJ_HASFFI && (irl->o == IR_CNEW || irl->o == 137))))
 break;
      irt_setmark(irl->t);
      irt_setmark(irr->t);
      break;
      }
    default:
      if (irt_ismarked(ir->t) || irt_isguard(ir->t)) {
 if (ir->op1 >= REF_FIRST) irt_setmark(IR(ir->op1)->t);
 if (ir->op2 >= REF_FIRST) irt_setmark(IR(ir->op2)->t);
      }
      break;
    }
  }
}
