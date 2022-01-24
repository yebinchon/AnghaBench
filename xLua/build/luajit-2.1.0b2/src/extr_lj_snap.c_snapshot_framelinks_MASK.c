#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ framedepth; int /*<<< orphan*/  pc; TYPE_1__* L; int /*<<< orphan*/ * baseslot; } ;
typedef  TYPE_2__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_7__ {int framesize; } ;
struct TYPE_5__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  int /*<<< orphan*/  SnapEntry ;
typedef  scalar_t__ MSize ;
typedef  int /*<<< orphan*/  GCfunc ;
typedef  int /*<<< orphan*/  BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_FR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static BCReg FUNC14(jit_State *J, SnapEntry *map)
{
  cTValue *frame = J->L->base - 1;
  cTValue *lim = J->L->base - J->baseslot;
  GCfunc *fn = FUNC4(frame);
  cTValue *ftop = FUNC12(fn) ? (frame+FUNC11(fn)->framesize) : J->L->top;
  MSize f = 0;
  FUNC13(!LJ_FR2);  /* TODO_FR2: store 64 bit PCs. */
  map[f++] = FUNC1(J->pc);  /* The current PC is always the first entry. */
  while (frame > lim) {  /* Backwards traversal of all frames above base. */
    if (FUNC7(frame)) {
      map[f++] = FUNC1(FUNC8(frame));
      frame = FUNC10(frame);
    } else if (FUNC6(frame)) {
      map[f++] = FUNC0(FUNC3(frame));
      map[f++] = FUNC1(FUNC2(frame));
      frame = FUNC9(frame);
    } else {
      FUNC13(!FUNC5(frame));
      map[f++] = FUNC0(FUNC3(frame));
      frame = FUNC9(frame);
      continue;
    }
    if (frame + FUNC11(FUNC4(frame))->framesize > ftop)
      ftop = frame + FUNC11(FUNC4(frame))->framesize;
  }
  FUNC13(f == (MSize)(1 + J->framedepth));
  return (BCReg)(ftop - lim);
}