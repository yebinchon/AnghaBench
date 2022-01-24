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
struct TYPE_3__ {int /*<<< orphan*/ * zeg_name; scalar_t__ zeg_errno; } ;
typedef  TYPE_1__ zcp_errno_global_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
 TYPE_1__* errno_globals ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(lua_State *state)
{
	const zcp_errno_global_t *global = errno_globals;
	while (global->zeg_name != NULL) {
		FUNC0(state, (lua_Number)global->zeg_errno);
		FUNC1(state, global->zeg_name);
		global++;
	}
}