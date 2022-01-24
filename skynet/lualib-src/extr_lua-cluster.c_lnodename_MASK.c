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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int
FUNC3(lua_State *L) {
	pid_t pid = FUNC1();
	char hostname[256];
	if (FUNC0(hostname, sizeof(hostname))==0) {
		FUNC2(L, "%s%d", hostname, (int)pid);
	} else {
		FUNC2(L, "noname%d", (int)pid);
	}
	return 1;
}