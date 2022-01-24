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
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_3__ {scalar_t__ context; } ;
typedef  TYPE_1__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

__attribute__((used)) static int
FUNC4(lua_State *L)
{
    ngx_http_request_t      *r;
    ngx_http_lua_ctx_t      *ctx;

#ifdef OPENRESTY_LUAJIT
    r = lua_getexdata(L);
#else
    r = FUNC2(L, 1);
#endif

    if (r == NULL) {
        return 0;
    }

    ctx = FUNC3(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return 0;
    }

    FUNC1(L, (int) ctx->context);
    return 1;
}