#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ ZFS_PROP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(lua_State *state, const char *setpoint, zfs_prop_t prop)
{
	if (FUNC3(prop) || (prop == ZFS_PROP_VERSION)) {
		FUNC0(state);
	} else {
		const char *src;
		if (FUNC2("", setpoint) == 0) {
			src = "default";
		} else {
			src = setpoint;
		}
		(void) FUNC1(state, src);
	}
}