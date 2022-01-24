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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC6(lua_State *L)
{
    u_char                              *p;
    size_t                               len;
    time_t                               time;

    if (FUNC2(L) != 1) {
        return FUNC1(L, "expecting one argument");
    }

    p = (u_char *) FUNC0(L, 1, &len);

    time = FUNC5(p, len);
    if (time == NGX_ERROR) {
        FUNC3(L);
        return 1;
    }

    FUNC4(L, (lua_Number) time);

    return 1;
}