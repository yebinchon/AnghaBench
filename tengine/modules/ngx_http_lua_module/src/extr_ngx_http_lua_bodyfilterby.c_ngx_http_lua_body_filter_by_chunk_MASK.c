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
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_6__ {TYPE_1__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_traceback ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC12(lua_State *L, ngx_http_request_t *r,
    ngx_chain_t *in)
{
    ngx_int_t        rc;
    u_char          *err_msg;
    size_t           len;
#if (NGX_PCRE)
    ngx_pool_t      *old_pool;
#endif

    FUNC0("initialize nginx context in Lua VM, code chunk at stack top  sp = 1");
    FUNC8(L, r, in);

#if (NGX_PCRE)
    /* XXX: work-around to nginx regex subsystem */
    old_pool = ngx_http_lua_pcre_malloc_init(r->pool);
#endif

    FUNC3(L, ngx_http_lua_traceback);
    FUNC1(L, 1);  /* put it under chunk and args */

    FUNC0("protected call user code");
    rc = FUNC2(L, 0, 1, 1);

    FUNC4(L, 1);  /* remove traceback function */

#if (NGX_PCRE)
    /* XXX: work-around to nginx regex subsystem */
    ngx_http_lua_pcre_malloc_done(old_pool);
#endif

    if (rc != 0) {

        /*  error occurred */
        err_msg = (u_char *) FUNC7(L, -1, &len);

        if (err_msg == NULL) {
            err_msg = (u_char *) "unknown reason";
            len = sizeof("unknown reason") - 1;
        }

        FUNC11(NGX_LOG_ERR, r->connection->log, 0,
                      "failed to run body_filter_by_lua*: %*s", len, err_msg);

        FUNC5(L, 0);    /*  clear remaining elems on stack */

        return NGX_ERROR;
    }

    /* rc == 0 */

    rc = (ngx_int_t) FUNC6(L, -1);

    FUNC0("got return value: %d", (int) rc);

    FUNC5(L, 0);

    if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return NGX_ERROR;
    }

    return NGX_OK;
}