#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TBOOLEAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC10(lua_State *L)
{
    int                      n;
    int                      no_padding = 0;
    ngx_str_t                p, src;

    n = FUNC3(L);
    if (n != 1 && n != 2) {
        return FUNC2(L, "expecting one or two arguments");
    }

    if (FUNC4(L, 1)) {
        src.data = (u_char *) "";
        src.len = 0;

    } else {
        src.data = (u_char *) FUNC0(L, 1, &src.len);
    }

    if (n == 2) {
        /* get the 2nd optional argument */
        FUNC1(L, 2, LUA_TBOOLEAN);
        no_padding = FUNC7(L, 2);
    }

    p.len = FUNC8(src.len, no_padding);

    p.data = FUNC5(L, p.len);

    FUNC9(&p, &src, no_padding);

    FUNC6(L, (char *) p.data, p.len);

    return 1;
}