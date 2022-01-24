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
 int /*<<< orphan*/  NGX_UNESCAPE_URI_COMPONENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(lua_State *L)
{
    size_t                   len, dlen;
    u_char                  *p;
    u_char                  *src, *dst;

    if (FUNC2(L) != 1) {
        return FUNC1(L, "expecting one argument");
    }

    if (FUNC3(L, 1)) {
        FUNC5(L, "");
        return 1;
    }

    src = (u_char *) FUNC0(L, 1, &len);

    /* the unescaped string can only be smaller */
    dlen = len;

    p = FUNC4(L, dlen);

    dst = p;

    FUNC7(&dst, &src, len, NGX_UNESCAPE_URI_COMPONENT);

    FUNC6(L, (char *) p, dst - p);

    return 1;
}