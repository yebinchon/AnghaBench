#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_18__ {int request_body_in_single_buf; int request_body_in_persistent_file; int request_body_in_clean_file; TYPE_2__* main; int /*<<< orphan*/  uri; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_19__ {scalar_t__ (* content_handler ) (TYPE_3__*) ;scalar_t__ force_read_body; } ;
typedef  TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_20__ {int entered_content_phase; int waiting_more_body; scalar_t__ (* resume_handler ) (TYPE_3__*) ;int /*<<< orphan*/  read_body_done; } ;
typedef  TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_17__ {int /*<<< orphan*/  count; } ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_5__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_content_phase_post_read ; 
 TYPE_5__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 

ngx_int_t
FUNC8(ngx_http_request_t *r)
{
    ngx_http_lua_loc_conf_t     *llcf;
    ngx_http_lua_ctx_t          *ctx;
    ngx_int_t                    rc;

    FUNC5(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua content handler, uri:\"%V\" c:%ud", &r->uri,
                   r->main->count);

    llcf = FUNC2(r, ngx_http_lua_module);

    if (llcf->content_handler == NULL) {
        FUNC0("no content handler found");
        return NGX_DECLINED;
    }

    ctx = FUNC1(r, ngx_http_lua_module);

    FUNC0("ctx = %p", ctx);

    if (ctx == NULL) {
        ctx = FUNC3(r);
        if (ctx == NULL) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }
    }

    FUNC0("entered? %d", (int) ctx->entered_content_phase);

    if (ctx->waiting_more_body) {
        return NGX_DONE;
    }

    if (ctx->entered_content_phase) {
        FUNC0("calling wev handler");
        rc = ctx->resume_handler(r);
        FUNC0("wev handler returns %d", (int) rc);
        return rc;
    }

    if (llcf->force_read_body && !ctx->read_body_done) {
        r->request_body_in_single_buf = 1;
        r->request_body_in_persistent_file = 1;
        r->request_body_in_clean_file = 1;

        rc = FUNC4(r,
                                        ngx_http_lua_content_phase_post_read);

        if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
#if (nginx_version < 1002006) ||                                             \
        (nginx_version >= 1003000 && nginx_version < 1003009)
            r->main->count--;
#endif
            return rc;
        }

        if (rc == NGX_AGAIN) {
            ctx->waiting_more_body = 1;

            return NGX_DONE;
        }
    }

    FUNC0("setting entered");

    ctx->entered_content_phase = 1;

    FUNC0("calling content handler");
    return llcf->content_handler(r);
}