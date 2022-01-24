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
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
    ngx_http_request_t          *r;
    ngx_int_t                    rc;
    int                          n;

    n = FUNC1(L);

    if (n != 0) {
        return FUNC0(L, "expecting 0 arguments but seen %d", n);
    }

    r = FUNC4(L);
    if (r == NULL) {
        return FUNC0(L, "request object not found");
    }

    FUNC3(L, r);

    rc = FUNC2(r);

    if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return FUNC0(L, "failed to discard request body");
    }

    return 0;
}