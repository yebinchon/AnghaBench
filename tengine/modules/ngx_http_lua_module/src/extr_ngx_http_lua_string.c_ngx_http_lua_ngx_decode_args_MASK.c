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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int NGX_HTTP_LUA_MAX_ARGS ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC9(lua_State *L)
{
    u_char                      *buf;
    u_char                      *tmp;
    size_t                       len = 0;
    int                          n;
    int                          max;

    n = FUNC4(L);

    if (n != 1 && n != 2) {
        return FUNC2(L, "expecting 1 or 2 arguments but seen %d", n);
    }

    buf = (u_char *) FUNC1(L, 1, &len);

    if (n == 2) {
        max = FUNC0(L, 2);
        FUNC6(L, 1);

    } else {
        max = NGX_HTTP_LUA_MAX_ARGS;
    }

    tmp = FUNC5(L, len);
    FUNC8(tmp, buf, len);

    FUNC3(L, 0, 4);

    return FUNC7(L, tmp, tmp + len, max);
}