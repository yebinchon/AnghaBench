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
struct TYPE_6__ {int /*<<< orphan*/  zri_cleanup_handlers; } ;
typedef  TYPE_1__ zcp_run_info_t ;
struct TYPE_7__ {int /*<<< orphan*/  zch_cleanup_arg; int /*<<< orphan*/  (* zch_cleanup_func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ zcp_cleanup_handler_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(lua_State *state)
{
	zcp_run_info_t *ri = FUNC3(state);

	for (zcp_cleanup_handler_t *zch =
	    FUNC1(&ri->zri_cleanup_handlers); zch != NULL;
	    zch = FUNC1(&ri->zri_cleanup_handlers)) {
		zch->zch_cleanup_func(zch->zch_cleanup_arg);
		FUNC0(zch, sizeof (*zch));
	}
}