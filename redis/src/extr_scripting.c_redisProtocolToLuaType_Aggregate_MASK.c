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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ server ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,long long*) ; 

char *FUNC8(lua_State *lua, char *reply, int atype) {
    char *p = FUNC6(reply+1,'\r');
    long long mbulklen;
    int j = 0;

    FUNC7(reply+1,p-reply-1,&mbulklen);
    if (server.lua_client->resp == 2 || atype == '*') {
        p += 2;
        if (mbulklen == -1) {
            FUNC1(lua,0);
            return p;
        }
        FUNC0(lua);
        for (j = 0; j < mbulklen; j++) {
            FUNC2(lua,j+1);
            p = FUNC5(lua,p);
            FUNC4(lua,-3);
        }
    } else if (server.lua_client->resp == 3) {
        /* Here we handle only Set and Map replies in RESP3 mode, since arrays
         * follow the above RESP2 code path. Note that those are represented
         * as a table with the "map" or "set" field populated with the actual
         * table representing the set or the map type. */
        p += 2;
        FUNC0(lua);
        FUNC3(lua,atype == '%' ? "map" : "set");
        FUNC0(lua);
        for (j = 0; j < mbulklen; j++) {
            p = FUNC5(lua,p);
            if (atype == '%') {
                p = FUNC5(lua,p);
            } else {
                FUNC1(lua,1);
            }
            FUNC4(lua,-3);
        }
        FUNC4(lua,-3);
    }
    return p;
}