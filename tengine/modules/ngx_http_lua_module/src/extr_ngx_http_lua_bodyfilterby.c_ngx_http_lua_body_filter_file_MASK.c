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
struct TYPE_13__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_14__ {TYPE_1__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {int /*<<< orphan*/  body_filter_src_key; int /*<<< orphan*/  body_filter_src; } ;
typedef  TYPE_4__ ngx_http_lua_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ngx_int_t
FUNC8(ngx_http_request_t *r, ngx_chain_t *in)
{
    lua_State                       *L;
    ngx_int_t                        rc;
    u_char                          *script_path;
    ngx_http_lua_loc_conf_t         *llcf;
    ngx_str_t                        eval_src;

    llcf = FUNC2(r, ngx_http_lua_module);

    /* Eval nginx variables in code path string first */
    if (FUNC1(r, &llcf->body_filter_src, &eval_src)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    script_path = FUNC7(r->pool, eval_src.data,
                                           eval_src.len);

    if (script_path == NULL) {
        return NGX_ERROR;
    }

    L = FUNC6(r, NULL);

    /*  load Lua script file (w/ cache)        sp = 1 */
    rc = FUNC5(r->connection->log, L, script_path,
                                     llcf->body_filter_src_key);
    if (rc != NGX_OK) {
        return NGX_ERROR;
    }

    /*  make sure we have a valid code chunk */
    FUNC3(FUNC0(L, -1));

    rc = FUNC4(L, r, in);

    if (rc != NGX_OK) {
        return NGX_ERROR;
    }

    return NGX_OK;
}