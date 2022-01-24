#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_13__ {size_t len; int /*<<< orphan*/ * data; } ;
struct TYPE_14__ {int internal; int uri_changed; scalar_t__ valid_location; scalar_t__ valid_unparsed_uri; TYPE_2__ uri; int /*<<< orphan*/  pool; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {scalar_t__ entered_content_phase; scalar_t__ entered_access_phase; scalar_t__ entered_rewrite_phase; } ;
typedef  TYPE_4__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TBOOLEAN ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC16(lua_State *L)
{
    ngx_http_request_t          *r;
    size_t                       len;
    u_char                      *p;
    int                          n;
    int                          jump = 0;
    ngx_http_lua_ctx_t          *ctx;

    n = FUNC4(L);

    if (n != 1 && n != 2) {
        return FUNC3(L, "expecting 1 or 2 arguments but seen %d", n);
    }

    r = FUNC11(L);
    if (r == NULL) {
        return FUNC3(L, "no request found");
    }

    FUNC9(L, r);

    p = (u_char *) FUNC1(L, 1, &len);

    if (len == 0) {
        return FUNC3(L, "attempt to use zero-length uri");
    }

    if (n == 2) {

        FUNC2(L, 2, LUA_TBOOLEAN);
        jump = FUNC5(L, 2);

        if (jump) {

            ctx = FUNC7(r, ngx_http_lua_module);
            if (ctx == NULL) {
                return FUNC3(L, "no ctx found");
            }

            FUNC0("rewrite: %d, access: %d, content: %d",
               (int) ctx->entered_rewrite_phase,
               (int) ctx->entered_access_phase,
               (int) ctx->entered_content_phase);

            FUNC8(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE);

            FUNC13(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "lua set uri jump to \"%*s\"", len, p);

            FUNC10(L, ctx);
        }
    }

    r->uri.data = FUNC15(r->pool, len);
    if (r->uri.data == NULL) {
        return FUNC3(L, "no memory");
    }

    FUNC14(r->uri.data, p, len);

    r->uri.len = len;

    r->internal = 1;
    r->valid_unparsed_uri = 0;

    FUNC12(r);

    if (jump) {
        r->uri_changed = 1;

        return FUNC6(L, 0);
    }

    r->valid_location = 0;
    r->uri_changed = 0;

    return 0;
}