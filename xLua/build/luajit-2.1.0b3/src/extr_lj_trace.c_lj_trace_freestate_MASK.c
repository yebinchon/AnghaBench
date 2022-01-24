#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ptrdiff_t ;
struct TYPE_6__ {scalar_t__ traceno; } ;
struct TYPE_7__ {scalar_t__ sizetrace; scalar_t__ trace; scalar_t__ irbotlim; scalar_t__ irtoplim; scalar_t__ irbuf; scalar_t__ sizesnap; scalar_t__ snapbuf; scalar_t__ sizesnapmap; scalar_t__ snapmapbuf; TYPE_1__ cur; } ;
typedef  TYPE_2__ jit_State ;
typedef  int /*<<< orphan*/  global_State ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GCRef ; 
 int /*<<< orphan*/  IRIns ; 
 int /*<<< orphan*/  SnapEntry ; 
 int /*<<< orphan*/  SnapShot ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int) ; 

void FUNC5(global_State *g)
{
  jit_State *J = FUNC0(g);
#ifdef LUA_USE_ASSERT
  {  /* This assumes all traces have already been freed. */
    ptrdiff_t i;
    for (i = 1; i < (ptrdiff_t)J->sizetrace; i++)
      lua_assert(i == (ptrdiff_t)J->cur.traceno || traceref(J, i) == NULL);
  }
#endif
  FUNC1(J);
  FUNC2(g, J->snapmapbuf, J->sizesnapmap, SnapEntry);
  FUNC2(g, J->snapbuf, J->sizesnap, SnapShot);
  FUNC2(g, J->irbuf + J->irbotlim, J->irtoplim - J->irbotlim, IRIns);
  FUNC2(g, J->trace, J->sizetrace, GCRef);
}