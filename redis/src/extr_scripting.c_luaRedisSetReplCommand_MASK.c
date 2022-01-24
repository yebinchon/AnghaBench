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
struct TYPE_2__ {scalar_t__ lua_replicate_commands; int lua_repl; } ;

/* Variables and functions */
 int PROPAGATE_AOF ; 
 int PROPAGATE_REPL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ server ; 

int FUNC4(lua_State *lua) {
    int argc = FUNC1(lua);
    int flags;

    if (server.lua_replicate_commands == 0) {
        FUNC2(lua, "You can set the replication behavior only after turning on single commands replication with redis.replicate_commands().");
        return FUNC0(lua);
    } else if (argc != 1) {
        FUNC2(lua, "redis.set_repl() requires two arguments.");
        return FUNC0(lua);
    }

    flags = FUNC3(lua,-1);
    if ((flags & ~(PROPAGATE_AOF|PROPAGATE_REPL)) != 0) {
        FUNC2(lua, "Invalid replication flags. Use REPL_AOF, REPL_REPLICA, REPL_ALL or REPL_NONE.");
        return FUNC0(lua);
    }
    server.lua_repl = flags;
    return 0;
}