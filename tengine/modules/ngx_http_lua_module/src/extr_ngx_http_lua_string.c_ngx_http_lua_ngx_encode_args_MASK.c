#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
    ngx_str_t                    args;

    if (FUNC2(L) != 1) {
        return FUNC1(L, "expecting 1 argument but seen %d",
                          FUNC2(L));
    }

    FUNC0(L, 1, LUA_TTABLE);
    FUNC4(NULL, L, 1, &args);
    FUNC3(L, (char *) args.data, args.len);
    return 1;
}