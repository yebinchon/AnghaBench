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
 int NGX_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC7(lua_State *L)
{
    size_t                   len, dlen, escape;
    u_char                  *p;
    u_char                  *src, *dst;

    if (FUNC2(L) != 1) {
        return FUNC1(L, "expecting one argument");
    }

    src = (u_char *) FUNC0(L, 1, &len);

    if (len == 0) {
        dst = (u_char *) "''";
        dlen = sizeof("''") - 1;
        FUNC4(L, (char *) dst, dlen);
        return 1;
    }

    escape = FUNC6(NULL, src, len);

    dlen = sizeof("''") - 1 + len + escape;

    p = FUNC3(L, dlen);

    dst = p;

    *p++ = '\'';

    if (escape == 0) {
        p = FUNC5(p, src, len);

    } else {
        p = (u_char *) FUNC6(p, src, len);
    }

    *p++ = '\'';

    if (p != dst + dlen) {
        return NGX_ERROR;
    }

    FUNC4(L, (char *) dst, p - dst);

    return 1;
}