#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  void* int32_t ;
struct TYPE_19__ {void* idx; void* ofs; void* base; } ;
struct TYPE_23__ {TYPE_2__ mrm; } ;
struct TYPE_18__ {int /*<<< orphan*/ * uvptr; } ;
struct TYPE_22__ {TYPE_1__ l; } ;
struct TYPE_21__ {int /*<<< orphan*/  tv; } ;
struct TYPE_20__ {int op1; int op2; int /*<<< orphan*/  o; int /*<<< orphan*/  r; } ;
struct TYPE_17__ {TYPE_4__ uv; } ;
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
 void* RID_DISPATCH ; 
 void* RID_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 TYPE_11__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(ASMState *as, IRRef ref, RegSet allow)
{
  IRIns *ir = FUNC0(ref);
  if (FUNC11(ir->r)) {
    switch ((IROp)ir->o) {
    case IR_AREF:
      if (FUNC8(as, ref)) {
	FUNC1(as, ir, allow);
	return;
      }
      break;
    case IR_HREFK:
      if (FUNC8(as, ref)) {
	as->mrm.base = (uint8_t)FUNC10(as, ir->op1, allow);
	as->mrm.ofs = (int32_t)(FUNC0(ir->op2)->op2 * sizeof(Node));
	as->mrm.idx = RID_NONE;
	return;
      }
      break;
    case IR_UREFC:
      if (FUNC6(ir->op1)) {
	GCfunc *fn = FUNC5(FUNC0(ir->op1));
	GCupval *uv = &FUNC4(fn->l.uvptr[(ir->op2 >> 8)])->uv;
#if LJ_GC64
	int64_t ofs = dispofs(as, &uv->tv);
	if (checki32(ofs) && checki32(ofs+4)) {
	  as->mrm.ofs = (int32_t)ofs;
	  as->mrm.base = RID_DISPATCH;
	  as->mrm.idx = RID_NONE;
	  return;
	}
#else
	as->mrm.ofs = FUNC9(&uv->tv);
	as->mrm.base = as->mrm.idx = RID_NONE;
	return;
#endif
      }
      break;
    default:
      FUNC7(ir->o == IR_HREF || ir->o == IR_NEWREF || ir->o == IR_UREFO ||
		 ir->o == IR_KKPTR);
      break;
    }
  }
  as->mrm.base = (uint8_t)FUNC10(as, ref, allow);
  as->mrm.ofs = 0;
  as->mrm.idx = RID_NONE;
}