#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_26__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_33__ {scalar_t__ base; TYPE_4__* top; int /*<<< orphan*/  maxstack; int /*<<< orphan*/  cframe; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_34__ {size_t exitno; TYPE_2__* L; int /*<<< orphan*/  parent; } ;
typedef  TYPE_3__ jit_State ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_38__ {int* snapmap; TYPE_6__* ir; TYPE_5__* snap; } ;
struct TYPE_37__ {scalar_t__ r; } ;
struct TYPE_36__ {size_t nent; size_t mapofs; int topslot; int /*<<< orphan*/  nslots; } ;
struct TYPE_31__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_35__ {TYPE_1__ u32; } ;
struct TYPE_32__ {int framesize; } ;
typedef  TYPE_4__ TValue ;
typedef  TYPE_5__ SnapShot ;
typedef  size_t SnapNo ;
typedef  int SnapEntry ;
typedef  size_t MSize ;
typedef  size_t IRRef ;
typedef  TYPE_6__ IRIns ;
typedef  TYPE_7__ GCtrace ;
typedef  int /*<<< orphan*/  ExitState ;
typedef  int /*<<< orphan*/  BloomFilter ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
#define  BC_CALLM 131 
#define  BC_CALLMT 130 
 int BC_FUNCF ; 
#define  BC_RETM 129 
#define  BC_TSETM 128 
 int /*<<< orphan*/  LJ_FR2 ; 
 scalar_t__ LJ_SOFTFP ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ RID_SUNK ; 
 int SNAP_CONT ; 
 int SNAP_FRAME ; 
 int SNAP_NORESTORE ; 
 int SNAP_SOFTFPNUM ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*,TYPE_4__*) ; 
 TYPE_26__* FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 size_t FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_7__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t,TYPE_4__*) ; 
 size_t FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,TYPE_7__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,TYPE_6__*,TYPE_4__*) ; 
 TYPE_7__* FUNC18 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_4__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 

const BCIns *FUNC21(jit_State *J, void *exptr)
{
  ExitState *ex = (ExitState *)exptr;
  SnapNo snapno = J->exitno;  /* For now, snapno == exitno. */
  GCtrace *T = FUNC18(J, J->parent);
  SnapShot *snap = &T->snap[snapno];
  MSize n, nent = snap->nent;
  SnapEntry *map = &T->snapmap[snap->mapofs];
  SnapEntry *flinks = &T->snapmap[FUNC11(T, snap)-1];
  ptrdiff_t ftsz0;
  TValue *frame;
  BloomFilter rfilt = FUNC14(T, snapno);
  const BCIns *pc = FUNC12(map[nent]);
  lua_State *L = J->L;

  /* Set interpreter PC to the next PC to get correct error messages. */
  FUNC9(FUNC2(L->cframe), pc+1);

  /* Make sure the stack is big enough for the slots from the snapshot. */
  if (FUNC0(L->base + snap->topslot >= FUNC20(L->maxstack))) {
    L->top = FUNC5(L);
    FUNC7(L, snap->topslot - FUNC4(L)->framesize);
  }

  /* Fill stack slots with data from the registers and spill slots. */
  frame = L->base-1;
  ftsz0 = FUNC6(frame);  /* Preserve link to previous frame in slot #0. */
  for (n = 0; n < nent; n++) {
    SnapEntry sn = map[n];
    if (!(sn & SNAP_NORESTORE)) {
      TValue *o = &frame[FUNC16(sn)];
      IRRef ref = FUNC13(sn);
      IRIns *ir = &T->ir[ref];
      if (ir->r == RID_SUNK) {
	MSize j;
	for (j = 0; j < n; j++)
	  if (FUNC13(map[j]) == ref) {  /* De-duplicate sunk allocations. */
	    FUNC3(L, o, &frame[FUNC16(map[j])]);
	    goto dupslot;
	  }
	FUNC17(J, T, ex, snapno, rfilt, ir, o);
      dupslot:
	continue;
      }
      FUNC15(J, T, ex, snapno, rfilt, ref, o);
      if (LJ_SOFTFP && (sn & SNAP_SOFTFPNUM) && FUNC19(o)) {
	TValue tmp;
	FUNC15(J, T, ex, snapno, rfilt, ref+1, &tmp);
	o->u32.hi = tmp.u32.lo;
      } else if ((sn & (SNAP_CONT|SNAP_FRAME))) {
	FUNC8(!LJ_FR2);  /* TODO_FR2: store 64 bit PCs. */
	/* Overwrite tag with frame link. */
	FUNC10(o, FUNC16(sn) != 0 ? (int32_t)*flinks-- : ftsz0);
	L->base = o+1;
      }
    }
  }
  FUNC8(map + nent == flinks);

  /* Compute current stack top. */
  switch (FUNC1(*pc)) {
  default:
    if (FUNC1(*pc) < BC_FUNCF) {
      L->top = FUNC5(L);
      break;
    }
    /* fallthrough */
  case BC_CALLM: case BC_CALLMT: case BC_RETM: case BC_TSETM:
    L->top = frame + snap->nslots;
    break;
  }
  return pc;
}