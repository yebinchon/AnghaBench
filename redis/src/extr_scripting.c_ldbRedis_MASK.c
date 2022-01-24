#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int step; } ;
struct TYPE_3__ {int lua_replicate_commands; } ;

/* Variables and functions */
 TYPE_2__ ldb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 

void FUNC7(lua_State *lua, sds *argv, int argc) {
    int j, saved_rc = server.lua_replicate_commands;

    FUNC0(lua,"redis");
    FUNC5(lua,"call");
    FUNC1(lua,-2);       /* Stack: redis, redis.call */
    for (j = 1; j < argc; j++)
        FUNC4(lua,argv[j],FUNC6(argv[j]));
    ldb.step = 1;               /* Force redis.call() to log. */
    server.lua_replicate_commands = 1;
    FUNC2(lua,argc-1,1,0);  /* Stack: redis, result */
    ldb.step = 0;               /* Disable logging. */
    server.lua_replicate_commands = saved_rc;
    FUNC3(lua,2);             /* Discard the result and clean the stack. */
}