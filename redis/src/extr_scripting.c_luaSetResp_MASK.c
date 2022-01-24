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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {TYPE_1__* lua_client; } ;
struct TYPE_3__ {int resp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ server ; 

int FUNC4(lua_State *lua) {
    int argc = FUNC1(lua);

    if (argc != 1) {
        FUNC2(lua, "redis.setresp() requires one argument.");
        return FUNC0(lua);
    }

    int resp = FUNC3(lua,-argc);
    if (resp != 2 && resp != 3) {
        FUNC2(lua, "RESP version must be 2 or 3.");
        return FUNC0(lua);
    }

    server.lua_client->resp = resp;
    return 0;
}