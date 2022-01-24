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
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
    u_char                  *p;
    size_t                   len;

    if (FUNC2(L) != 1) {
        return FUNC1(L, "expecting one argument, but got %d",
                          FUNC2(L));
    }

    p = (u_char *) FUNC0(L, 1, &len);

    FUNC3(L, (lua_Number) FUNC4(p, len));
    return 1;
}