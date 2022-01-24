#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int sinktags; scalar_t__ nins; scalar_t__ nk; } ;
struct TYPE_12__ {TYPE_1__ cur; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_14__ {int /*<<< orphan*/  irt; } ;
struct TYPE_13__ {int o; void* prev; TYPE_8__ t; scalar_t__ op2; scalar_t__ op1; } ;
typedef  TYPE_3__ IRIns ;

/* Variables and functions */
 TYPE_3__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IRT_GUARD ; 
#define  IR_ASTORE 137 
#define  IR_CNEW 136 
#define  IR_CNEWI 135 
#define  IR_FSTORE 134 
#define  IR_HSTORE 133 
#define  IR_NEWREF 132 
#define  IR_PHI 131 
#define  IR_TDUP 130 
#define  IR_TNEW 129 
#define  IR_XSTORE 128 
 int /*<<< orphan*/  LJ_HASFFI ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* REGSP_INIT ; 
 int /*<<< orphan*/  RID_SINK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(jit_State *J)
{
  IRIns *ir, *irfirst = FUNC0(J->cur.nk);
  for (ir = FUNC0(J->cur.nins-1) ; ir >= irfirst; ir--) {
    switch (ir->o) {
    case IR_ASTORE: case IR_HSTORE: case IR_FSTORE: case IR_XSTORE: {
      IRIns *ira = FUNC4(J, ir);
      if (ira && !FUNC3(ira->t)) {
	int delta = (int)(ir - ira);
	ir->prev = FUNC1(RID_SINK, delta > 255 ? 255 : delta);
      } else {
	ir->prev = REGSP_INIT;
      }
      break;
      }
    case IR_NEWREF:
      if (!FUNC3(FUNC0(ir->op1)->t)) {
	ir->prev = FUNC1(RID_SINK, 0);
      } else {
	FUNC2(ir->t);
	ir->prev = REGSP_INIT;
      }
      break;
#if LJ_HASFFI
    case IR_CNEW: case IR_CNEWI:
#endif
    case IR_TNEW: case IR_TDUP:
      if (!FUNC3(ir->t)) {
	ir->t.irt &= ~IRT_GUARD;
	ir->prev = FUNC1(RID_SINK, 0);
	J->cur.sinktags = 1;  /* Signal present SINK tags to assembler. */
      } else {
	FUNC2(ir->t);
	ir->prev = REGSP_INIT;
      }
      break;
    case IR_PHI: {
      IRIns *ira = FUNC0(ir->op2);
      if (!FUNC3(ira->t) &&
	  (ira->o == IR_TNEW || ira->o == IR_TDUP ||
	   (LJ_HASFFI && (ira->o == IR_CNEW || ira->o == IR_CNEWI)))) {
	ir->prev = FUNC1(RID_SINK, 0);
      } else {
	ir->prev = REGSP_INIT;
      }
      break;
      }
    default:
      FUNC2(ir->t);
      ir->prev = REGSP_INIT;
      break;
    }
  }
}