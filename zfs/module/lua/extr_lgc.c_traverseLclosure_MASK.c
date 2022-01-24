#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lu_mem ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_3__ {int nupvalues; int /*<<< orphan*/ * upvals; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ LClosure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static lu_mem FUNC2 (global_State *g, LClosure *cl) {
  int i;
  FUNC0(g, cl->p);  /* mark its prototype */
  for (i = 0; i < cl->nupvalues; i++)  /* mark its upvalues */
    FUNC0(g, cl->upvals[i]);
  return FUNC1(cl->nupvalues);
}