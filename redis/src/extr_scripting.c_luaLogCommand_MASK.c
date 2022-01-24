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
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LL_DEBUG ; 
 int LL_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

int FUNC10(lua_State *lua) {
    int j, argc = FUNC1(lua);
    int level;
    sds log;

    if (argc < 2) {
        FUNC3(lua, "redis.log() requires two arguments or more.");
        return FUNC0(lua);
    } else if (!FUNC2(lua,-argc)) {
        FUNC3(lua, "First argument must be a number (log level).");
        return FUNC0(lua);
    }
    level = FUNC5(lua,-argc);
    if (level < LL_DEBUG || level > LL_WARNING) {
        FUNC3(lua, "Invalid debug level.");
        return FUNC0(lua);
    }

    /* Glue together all the arguments */
    log = FUNC7();
    for (j = 1; j < argc; j++) {
        size_t len;
        char *s;

        s = (char*)FUNC4(lua,(-argc)+j,&len);
        if (s) {
            if (j != 1) log = FUNC6(log," ",1);
            log = FUNC6(log,s,len);
        }
    }
    FUNC9(level,log);
    FUNC8(log);
    return 0;
}