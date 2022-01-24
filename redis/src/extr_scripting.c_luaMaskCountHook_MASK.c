#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Debug ;
struct TYPE_2__ {long long lua_time_start; long long lua_time_limit; int lua_timedout; scalar_t__ lua_kill; int /*<<< orphan*/  lua_caller; int /*<<< orphan*/  lua_cur_script; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 long long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC7(lua_State *lua, lua_Debug *ar) {
    long long elapsed = FUNC3() - server.lua_time_start;
    FUNC0(ar);
    FUNC0(lua);

    /* Set the timeout condition if not already set and the maximum
     * execution time was reached. */
    if (elapsed >= server.lua_time_limit && server.lua_timedout == 0) {
        FUNC6(LL_WARNING,
            "Lua slow script detected: still in execution after %lld milliseconds. "
            "You can try killing the script using the SCRIPT KILL command. "
            "Script SHA1 is: %s",
            elapsed, server.lua_cur_script);
        server.lua_timedout = 1;
        /* Once the script timeouts we reenter the event loop to permit others
         * to call SCRIPT KILL or SHUTDOWN NOSAVE if needed. For this reason
         * we need to mask the client executing the script from the event loop.
         * If we don't do that the client may disconnect and could no longer be
         * here when the EVAL command will return. */
        FUNC5(server.lua_caller);
    }
    if (server.lua_timedout) FUNC4();
    if (server.lua_kill) {
        FUNC6(LL_WARNING,"Lua script killed by user with SCRIPT KILL.");
        FUNC2(lua,"Script killed by user with SCRIPT KILL...");
        FUNC1(lua);
    }
}