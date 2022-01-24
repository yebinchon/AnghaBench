#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_11__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_12__ {scalar_t__ vmevmask; } ;
typedef  TYPE_2__ global_State ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ VMEVENT_NOCACHE ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(lua_State *L, ptrdiff_t argbase)
{
  global_State *g = FUNC0(L);
  uint8_t oldmask = g->vmevmask;
  uint8_t oldh = FUNC5(g);
  int status;
  g->vmevmask = 0;  /* Disable all events. */
  FUNC6(g);
  status = FUNC7(L, FUNC8(L, argbase), 0+1, 0);
  if (FUNC1(status)) {
    /* Really shouldn't use stderr here, but where else to complain? */
    L->top--;
    FUNC3("VM handler failed: ", stderr);
    FUNC3(FUNC10(L->top) ? FUNC9(L->top) : "?", stderr);
    FUNC2('\n', stderr);
  }
  FUNC4(g, oldh);
  if (g->vmevmask != VMEVENT_NOCACHE)
    g->vmevmask = oldmask;  /* Restore event mask, but not if not modified. */
}