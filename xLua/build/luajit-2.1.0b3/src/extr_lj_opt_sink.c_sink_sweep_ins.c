
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int sinktags; scalar_t__ nk; scalar_t__ nins; } ;
struct TYPE_13__ {TYPE_1__ cur; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_15__ {int irt; } ;
struct TYPE_14__ {int o; TYPE_8__ t; void* prev; scalar_t__ op2; scalar_t__ op1; } ;
typedef TYPE_3__ IRIns ;


 TYPE_3__* IR (scalar_t__) ;
 int IRT_GUARD ;





 int const IR_KNULL ;





 int LJ_HASFFI ;
 scalar_t__ REF_BASE ;
 void* REGSP (int ,int) ;
 void* REGSP_INIT ;
 int RID_SINK ;
 int irt_clearmark (TYPE_8__) ;
 scalar_t__ irt_is64 (TYPE_8__) ;
 int irt_ismarked (TYPE_8__) ;
 TYPE_3__* sink_checkalloc (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void sink_sweep_ins(jit_State *J)
{
  IRIns *ir, *irbase = IR(REF_BASE);
  for (ir = IR(J->cur.nins-1) ; ir >= irbase; ir--) {
    switch (ir->o) {
    case 137: case 133: case 134: case 128: {
      IRIns *ira = sink_checkalloc(J, ir);
      if (ira && !irt_ismarked(ira->t)) {
 int delta = (int)(ir - ira);
 ir->prev = REGSP(RID_SINK, delta > 255 ? 255 : delta);
      } else {
 ir->prev = REGSP_INIT;
      }
      break;
      }
    case 132:
      if (!irt_ismarked(IR(ir->op1)->t)) {
 ir->prev = REGSP(RID_SINK, 0);
      } else {
 irt_clearmark(ir->t);
 ir->prev = REGSP_INIT;
      }
      break;



    case 129: case 130:
      if (!irt_ismarked(ir->t)) {
 ir->t.irt &= ~IRT_GUARD;
 ir->prev = REGSP(RID_SINK, 0);
 J->cur.sinktags = 1;
      } else {
 irt_clearmark(ir->t);
 ir->prev = REGSP_INIT;
      }
      break;
    case 131: {
      IRIns *ira = IR(ir->op2);
      if (!irt_ismarked(ira->t) &&
   (ira->o == 129 || ira->o == 130 ||
    (LJ_HASFFI && (ira->o == 136 || ira->o == 135)))) {
 ir->prev = REGSP(RID_SINK, 0);
      } else {
 ir->prev = REGSP_INIT;
      }
      break;
      }
    default:
      irt_clearmark(ir->t);
      ir->prev = REGSP_INIT;
      break;
    }
  }
  for (ir = IR(J->cur.nk); ir < irbase; ir++) {
    irt_clearmark(ir->t);
    ir->prev = REGSP_INIT;
    if (irt_is64(ir->t) && ir->o != IR_KNULL)
      ir++;
  }
}
