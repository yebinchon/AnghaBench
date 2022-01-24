#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_19__ {TYPE_2__* main; int /*<<< orphan*/  uri; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_20__ {scalar_t__ malloc_trim_cycle; scalar_t__ malloc_trim_req_count; } ;
typedef  TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_21__ {int /*<<< orphan*/  (* log_handler ) (TYPE_3__*) ;} ;
typedef  TYPE_5__ ngx_http_lua_loc_conf_t ;
struct TYPE_22__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_6__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {int /*<<< orphan*/  count; } ;
struct TYPE_17__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DECLINED ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CONTEXT_LOG ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_6__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

ngx_int_t
FUNC10(ngx_http_request_t *r)
{
#if (NGX_HTTP_LUA_HAVE_MALLOC_TRIM)
    ngx_uint_t                   trim_cycle, trim_nreq;
    ngx_http_lua_main_conf_t    *lmcf;
#endif
    ngx_http_lua_loc_conf_t     *llcf;
    ngx_http_lua_ctx_t          *ctx;

#if (NGX_HTTP_LUA_HAVE_MALLOC_TRIM)
    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);

    trim_cycle = lmcf->malloc_trim_cycle;

    if (trim_cycle > 0) {

        dd("cycle: %d", (int) trim_cycle);

        trim_nreq = ++lmcf->malloc_trim_req_count;

        if (trim_nreq >= trim_cycle) {
            lmcf->malloc_trim_req_count = 0;

#if (NGX_DEBUG)
            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "malloc_trim(1) returned %d", malloc_trim(1));
#else
            (void) malloc_trim(1);
#endif
        }
    }
#   if (NGX_DEBUG)
    else {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "malloc_trim() disabled");
    }
#   endif
#endif

    FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua log handler, uri:\"%V\" c:%ud", &r->uri,
                   r->main->count);

    llcf = FUNC3(r, ngx_http_lua_module);

    if (llcf->log_handler == NULL) {
        FUNC0("no log handler found");
        return NGX_DECLINED;
    }

    ctx = FUNC2(r, ngx_http_lua_module);

    FUNC0("ctx = %p", ctx);

    if (ctx == NULL) {
        ctx = FUNC5(r);
        if (ctx == NULL) {
            return NGX_ERROR;
        }
    }

    ctx->context = NGX_HTTP_LUA_CONTEXT_LOG;

    FUNC0("calling log handler");
    return llcf->log_handler(r);
}