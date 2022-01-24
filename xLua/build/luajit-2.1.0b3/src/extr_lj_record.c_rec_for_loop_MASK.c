#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int start; } ;
struct TYPE_16__ {size_t maxslot; void** base; TYPE_3__ scev; TYPE_1__* L; } ;
typedef  TYPE_4__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_14__ {scalar_t__ irt; } ;
struct TYPE_17__ {int dir; int /*<<< orphan*/  pc; void* idx; void* step; void* stop; void* start; TYPE_2__ t; } ;
struct TYPE_13__ {int /*<<< orphan*/ * base; } ;
typedef  void* TRef ;
typedef  TYPE_5__ ScEvEntry ;
typedef  scalar_t__ IRType ;
typedef  size_t BCReg ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 scalar_t__ BC_FORI ; 
 scalar_t__ BC_JFORI ; 
 size_t FORL_EXT ; 
 size_t FORL_IDX ; 
 size_t FORL_STEP ; 
 size_t FORL_STOP ; 
 int IRSLOAD_INHERIT ; 
 int IRSLOAD_READONLY ; 
 int IRSLOAD_TYPECHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ IRT_INT ; 
 scalar_t__ IRT_NUM ; 
 int /*<<< orphan*/  IR_ADD ; 
 scalar_t__ LJ_DUALNUM ; 
 size_t FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC4 (TYPE_4__*,int /*<<< orphan*/  const*,size_t,scalar_t__) ; 
 void* FUNC5 (TYPE_4__*,int /*<<< orphan*/  const*,size_t,scalar_t__,int) ; 
 void* FUNC6 (TYPE_4__*,size_t,scalar_t__,int) ; 
 scalar_t__ FUNC7 (void*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,scalar_t__,int,void*,void*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 void* FUNC13 (void*) ; 
 scalar_t__ FUNC14 (void*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(jit_State *J, const BCIns *fori, ScEvEntry *scev,
			 int init)
{
  BCReg ra = FUNC1(*fori);
  cTValue *tv = &J->L->base[ra];
  TRef idx = J->base[ra+FORL_IDX];
  IRType t = idx ? FUNC14(idx) :
	     (init || LJ_DUALNUM) ? FUNC8(J, tv) : IRT_NUM;
  int mode = IRSLOAD_INHERIT +
    ((!LJ_DUALNUM || FUNC15(tv) == (t == IRT_INT)) ? IRSLOAD_READONLY : 0);
  TRef stop = FUNC5(J, fori, ra+FORL_STOP, t, mode);
  TRef step = FUNC5(J, fori, ra+FORL_STEP, t, mode);
  int tc, dir = FUNC11(&tv[FORL_STEP]);
  FUNC9(FUNC2(*fori) == BC_FORI || FUNC2(*fori) == BC_JFORI);
  scev->t.irt = t;
  scev->dir = dir;
  scev->stop = FUNC13(stop);
  scev->step = FUNC13(step);
  FUNC10(J, t, dir, stop, step, init);
  scev->start = FUNC13(FUNC4(J, fori, ra+FORL_IDX, IRT_INT));
  tc = (LJ_DUALNUM &&
	!(scev->start && FUNC7(scev->stop) && FUNC7(scev->step) &&
	  FUNC15(&tv[FORL_IDX]) == (t == IRT_INT))) ?
	IRSLOAD_TYPECHECK : 0;
  if (tc) {
    J->base[ra+FORL_STOP] = stop;
    J->base[ra+FORL_STEP] = step;
  }
  if (!idx)
    idx = FUNC6(J, ra+FORL_IDX, t,
		    IRSLOAD_INHERIT + tc + (J->scev.start << 16));
  if (!init)
    J->base[ra+FORL_IDX] = idx = FUNC3(FUNC0(IR_ADD, t), idx, step);
  J->base[ra+FORL_EXT] = idx;
  scev->idx = FUNC13(idx);
  FUNC12(scev->pc, fori);
  J->maxslot = ra+FORL_EXT+1;
}