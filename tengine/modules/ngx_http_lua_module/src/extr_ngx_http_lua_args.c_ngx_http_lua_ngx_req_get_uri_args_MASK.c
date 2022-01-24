#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  pool; TYPE_1__ args; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int NGX_HTTP_LUA_MAX_ARGS ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(lua_State *L)
{
    ngx_http_request_t          *r;
    u_char                      *buf;
    u_char                      *last;
    int                          retval;
    int                          n;
    int                          max;

    n = FUNC3(L);

    if (n != 0 && n != 1) {
        return FUNC1(L, "expecting 0 or 1 arguments but seen %d", n);
    }

    if (n == 1) {
        max = FUNC0(L, 1);
        FUNC4(L, 1);

    } else {
        max = NGX_HTTP_LUA_MAX_ARGS;
    }

    r = FUNC6(L);
    if (r == NULL) {
        return FUNC1(L, "no request object found");
    }

    FUNC5(L, r);

    if (r->args.len == 0) {
        FUNC2(L, 0, 0);
        return 1;
    }

    /* we copy r->args over to buf to simplify
     * unescaping query arg keys and values */

    buf = FUNC9(r->pool, r->args.len);
    if (buf == NULL) {
        return FUNC1(L, "no memory");
    }

    FUNC2(L, 0, 4);

    FUNC8(buf, r->args.data, r->args.len);

    last = buf + r->args.len;

    retval = FUNC7(L, buf, last, max);

    FUNC10(r->pool, buf);

    return retval;
}