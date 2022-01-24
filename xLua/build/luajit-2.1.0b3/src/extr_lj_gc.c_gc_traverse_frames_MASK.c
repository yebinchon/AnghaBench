#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  maxstack; int /*<<< orphan*/ * base; int /*<<< orphan*/  stack; int /*<<< orphan*/ * top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_5__ {int /*<<< orphan*/  framesize; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  MSize ;
typedef  int /*<<< orphan*/  GCfunc ;

/* Variables and functions */
 int LJ_FR2 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MSize FUNC6(global_State *g, lua_State *th)
{
  TValue *frame, *top = th->top-1, *bot = FUNC5(th->stack);
  /* Note: extra vararg frame not skipped, marks function twice (harmless). */
  for (frame = th->base-1; frame > bot+LJ_FR2; frame = FUNC1(frame)) {
    GCfunc *fn = FUNC0(frame);
    TValue *ftop = frame;
    if (FUNC4(fn)) ftop += FUNC2(fn)->framesize;
    if (ftop > top) top = ftop;
    if (!LJ_FR2) FUNC3(g, fn);  /* Need to mark hidden function (or L). */
  }
  top++;  /* Correct bias of -1 (frame == base-1). */
  if (top > FUNC5(th->maxstack)) top = FUNC5(th->maxstack);
  return (MSize)(top - bot);  /* Return minimum needed stack size. */
}