#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_28__ {size_t phase_handler; int request_body_in_single_buf; int request_body_in_persistent_file; int request_body_in_clean_file; TYPE_3__* main; scalar_t__ header_sent; int /*<<< orphan*/  uri; TYPE_1__* connection; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_29__ {int next; } ;
typedef  TYPE_5__ ngx_http_phase_handler_t ;
struct TYPE_30__ {int postponed_to_access_phase_end; } ;
typedef  TYPE_6__ ngx_http_lua_main_conf_t ;
struct TYPE_31__ {scalar_t__ (* access_handler ) (TYPE_4__*) ;scalar_t__ force_read_body; } ;
typedef  TYPE_7__ ngx_http_lua_loc_conf_t ;
struct TYPE_32__ {scalar_t__ (* resume_handler ) (TYPE_4__*) ;int waiting_more_body; int /*<<< orphan*/  read_body_done; int /*<<< orphan*/  eof; scalar_t__ entered_access_phase; } ;
typedef  TYPE_8__ ngx_http_lua_ctx_t ;
struct TYPE_26__ {TYPE_5__* handlers; } ;
struct TYPE_33__ {TYPE_2__ phase_engine; } ;
typedef  TYPE_9__ ngx_http_core_main_conf_t ;
struct TYPE_27__ {int /*<<< orphan*/  count; } ;
struct TYPE_25__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_OK ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_8__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_http_lua_generic_phase_post_read ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC6 (TYPE_4__*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 

ngx_int_t
FUNC11(ngx_http_request_t *r)
{
    ngx_int_t                   rc;
    ngx_http_lua_ctx_t         *ctx;
    ngx_http_lua_loc_conf_t    *llcf;
    ngx_http_lua_main_conf_t   *lmcf;
    ngx_http_phase_handler_t    tmp, *ph, *cur_ph, *last_ph;
    ngx_http_core_main_conf_t  *cmcf;

    FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua access handler, uri:\"%V\" c:%ud", &r->uri,
                   r->main->count);

    lmcf = FUNC4(r, ngx_http_lua_module);

    if (!lmcf->postponed_to_access_phase_end) {

        lmcf->postponed_to_access_phase_end = 1;

        cmcf = FUNC4(r, ngx_http_core_module);

        ph = cmcf->phase_engine.handlers;
        cur_ph = &ph[r->phase_handler];

        /* we should skip the post_access phase handler here too */
        last_ph = &ph[cur_ph->next - 2];

        FUNC0("ph cur: %d, ph next: %d", (int) r->phase_handler,
           (int) (cur_ph->next - 2));

#if 0
        if (cur_ph == last_ph) {
            dd("XXX our handler is already the last access phase handler");
        }
#endif

        if (cur_ph < last_ph) {
            FUNC0("swapping the contents of cur_ph and last_ph...");

            tmp = *cur_ph;

            FUNC1(cur_ph, cur_ph + 1,
                    (last_ph - cur_ph) * sizeof (ngx_http_phase_handler_t));

            *last_ph = tmp;

            r->phase_handler--; /* redo the current ph */

            return NGX_DECLINED;
        }
    }

    llcf = FUNC3(r, ngx_http_lua_module);

    if (llcf->access_handler == NULL) {
        FUNC0("no access handler found");
        return NGX_DECLINED;
    }

    ctx = FUNC2(r, ngx_http_lua_module);

    FUNC0("ctx = %p", ctx);

    if (ctx == NULL) {
        ctx = FUNC5(r);
        if (ctx == NULL) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }
    }

    FUNC0("entered? %d", (int) ctx->entered_access_phase);

    if (ctx->entered_access_phase) {
        FUNC0("calling wev handler");
        rc = ctx->resume_handler(r);
        FUNC0("wev handler returns %d", (int) rc);

        if (rc == NGX_ERROR || rc == NGX_DONE || rc > NGX_OK) {
            return rc;
        }

        if (rc == NGX_OK) {
            if (r->header_sent) {
                FUNC0("header already sent");

                /* response header was already generated in access_by_lua*,
                 * so it is no longer safe to proceed to later phases
                 * which may generate responses again */

                if (!ctx->eof) {
                    FUNC0("eof not yet sent");

                    rc = FUNC6(r, ctx, NULL
                                                     /* indicate last_buf */);
                    if (rc == NGX_ERROR || rc > NGX_OK) {
                        return rc;
                    }
                }

                return NGX_HTTP_OK;
            }

            return NGX_OK;
        }

        return NGX_DECLINED;
    }

    if (ctx->waiting_more_body) {
        FUNC0("WAITING MORE BODY");
        return NGX_DONE;
    }

    if (llcf->force_read_body && !ctx->read_body_done) {
        r->request_body_in_single_buf = 1;
        r->request_body_in_persistent_file = 1;
        r->request_body_in_clean_file = 1;

        rc = FUNC7(r,
                                       ngx_http_lua_generic_phase_post_read);

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

    FUNC0("calling access handler");
    return llcf->access_handler(r);
}