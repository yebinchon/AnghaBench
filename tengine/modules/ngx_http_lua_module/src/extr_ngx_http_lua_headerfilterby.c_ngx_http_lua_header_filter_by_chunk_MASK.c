#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int ngx_int_t ;
struct TYPE_10__ {TYPE_1__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_11__ {int exit_code; scalar_t__ exited; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int NGX_AGAIN ; 
 int NGX_DECLINED ; 
 int NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_traceback ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC13(lua_State *L, ngx_http_request_t *r)
{
    int              old_exit_code = 0;
    ngx_int_t        rc;
    u_char          *err_msg;
    size_t           len;
#if (NGX_PCRE)
    ngx_pool_t      *old_pool;
#endif
    ngx_http_lua_ctx_t          *ctx;

    ctx = FUNC8(r, ngx_http_lua_module);
    if (ctx->exited) {
        old_exit_code = ctx->exit_code;
    }

    /*  initialize nginx context in Lua VM, code chunk at stack top    sp = 1 */
    FUNC9(L, r);

#if (NGX_PCRE)
    /* XXX: work-around to nginx regex subsystem */
    old_pool = ngx_http_lua_pcre_malloc_init(r->pool);
#endif

    FUNC3(L, ngx_http_lua_traceback);
    FUNC1(L, 1);  /* put it under chunk and args */

    /*  protected call user code */
    rc = FUNC2(L, 0, 1, 1);

    FUNC4(L, 1);  /* remove traceback function */

#if (NGX_PCRE)
    /* XXX: work-around to nginx regex subsystem */
    ngx_http_lua_pcre_malloc_done(old_pool);
#endif

    FUNC0("rc == %d", (int) rc);

    if (rc != 0) {
        /*  error occurred when running loaded code */
        err_msg = (u_char *) FUNC6(L, -1, &len);

        if (err_msg == NULL) {
            err_msg = (u_char *) "unknown reason";
            len = sizeof("unknown reason") - 1;
        }

        FUNC12(NGX_LOG_ERR, r->connection->log, 0,
                      "failed to run header_filter_by_lua*: %*s", len, err_msg);

        FUNC5(L, 0); /*  clear remaining elems on stack */

        return NGX_ERROR;
    }

    FUNC0("exited: %d, exit code: %d, old exit code: %d",
       (int) ctx->exited, (int) ctx->exit_code, (int) old_exit_code);

#if 1
    /*  clear Lua stack */
    FUNC5(L, 0);
#endif

    if (ctx->exited && ctx->exit_code != old_exit_code) {
        if (ctx->exit_code == NGX_ERROR) {
            return NGX_ERROR;
        }

        FUNC0("finalize request with %d", (int) ctx->exit_code);

        rc = FUNC7(r, &ngx_http_lua_module,
                                              ctx->exit_code);
        if (rc == NGX_ERROR || rc == NGX_AGAIN) {
            return rc;
        }

        return NGX_DECLINED;
    }

    return NGX_OK;
}