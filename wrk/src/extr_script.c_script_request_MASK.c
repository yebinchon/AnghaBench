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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 char* FUNC7 (char*,size_t) ; 

void FUNC8(lua_State *L, char **buf, size_t *len) {
    int pop = 1;
    FUNC2(L, "request");
    if (!FUNC3(L, -1)) {
        FUNC2(L, "wrk");
        FUNC1(L, -1, "request");
        pop += 2;
    }
    FUNC0(L, 0, 1);
    const char *str = FUNC5(L, -1, len);
    *buf = FUNC7(*buf, *len);
    FUNC6(*buf, str, *len);
    FUNC4(L, pop);
}