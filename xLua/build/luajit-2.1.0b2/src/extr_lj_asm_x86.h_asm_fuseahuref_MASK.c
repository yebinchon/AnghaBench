#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_18__ {void* idx; scalar_t__ ofs; void* base; } ;
struct TYPE_22__ {TYPE_2__ mrm; } ;
struct TYPE_17__ {int /*<<< orphan*/ * uvptr; } ;
struct TYPE_21__ {TYPE_1__ l; } ;
struct TYPE_20__ {int /*<<< orphan*/  tv; } ;
struct TYPE_19__ {int op1; int op2; int /*<<< orphan*/  o; int /*<<< orphan*/  r; } ;
struct TYPE_16__ {TYPE_4__ uv; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int /*<<< orphan*/  Node ;
typedef  int IRRef ;
typedef  int /*<<< orphan*/  IROp ;
typedef  TYPE_3__ IRIns ;
typedef  TYPE_4__ GCupval ;
typedef  TYPE_5__ GCfunc ;
typedef  TYPE_6__ ASMState ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int) ; 
#define  IR_AREF 130 
 int /*<<< orphan*/  IR_HREF ; 
#define  IR_HREFK 129 
 int /*<<< orphan*/  IR_KKPTR ; 
 int /*<<< orphan*/  IR_NEWREF ; 
#define  IR_UREFC 128 
 int /*<<< orphan*/  IR_UREFO ; 
 void* RID_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(ASMState *as, IRRef ref, RegSet allow)
{
  IRIns *ir = FUNC0(ref);
  if (FUNC9(ir->r)) {
    switch ((IROp)ir->o) {
    case IR_AREF:
      if (FUNC6(as, ref)) {
	FUNC1(as, ir, allow);
	return;
      }
      break;
    case IR_HREFK:
      if (FUNC6(as, ref)) {
	as->mrm.base = (uint8_t)FUNC8(as, ir->op1, allow);
	as->mrm.ofs = (int32_t)(FUNC0(ir->op2)->op2 * sizeof(Node));
	as->mrm.idx = RID_NONE;
	return;
      }
      break;
    case IR_UREFC:
      if (FUNC4(ir->op1)) {
	GCfunc *fn = FUNC3(FUNC0(ir->op1));
	GCupval *uv = &FUNC2(fn->l.uvptr[(ir->op2 >> 8)])->uv;
	as->mrm.ofs = FUNC7(&uv->tv);
	as->mrm.base = as->mrm.idx = RID_NONE;
	return;
      }
      break;
    default:
      FUNC5(ir->o == IR_HREF || ir->o == IR_NEWREF || ir->o == IR_UREFO ||
		 ir->o == IR_KKPTR);
      break;
    }
  }
  as->mrm.base = (uint8_t)FUNC8(as, ref, allow);
  as->mrm.ofs = 0;
  as->mrm.idx = RID_NONE;
}