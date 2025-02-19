
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_28__ {size_t phase_handler; int request_body_in_single_buf; int request_body_in_persistent_file; int request_body_in_clean_file; TYPE_3__* main; int write_event_handler; scalar_t__ header_sent; int uri; TYPE_1__* connection; scalar_t__ uri_changed; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_29__ {int next; } ;
typedef TYPE_5__ ngx_http_phase_handler_t ;
struct TYPE_30__ {int postponed_to_rewrite_phase_end; } ;
typedef TYPE_6__ ngx_http_lua_main_conf_t ;
struct TYPE_31__ {scalar_t__ (* rewrite_handler ) (TYPE_4__*) ;scalar_t__ force_read_body; } ;
typedef TYPE_7__ ngx_http_lua_loc_conf_t ;
struct TYPE_32__ {scalar_t__ (* resume_handler ) (TYPE_4__*) ;int waiting_more_body; int read_body_done; scalar_t__ entered_rewrite_phase; int eof; } ;
typedef TYPE_8__ ngx_http_lua_ctx_t ;
struct TYPE_26__ {TYPE_5__* handlers; } ;
struct TYPE_33__ {TYPE_2__ phase_engine; } ;
typedef TYPE_9__ ngx_http_core_main_conf_t ;
struct TYPE_27__ {int count; } ;
struct TYPE_25__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_OK ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int dd (char*,...) ;
 int memmove (TYPE_5__*,TYPE_5__*,int) ;
 int ngx_http_core_module ;
 int ngx_http_core_run_phases ;
 TYPE_8__* ngx_http_get_module_ctx (TYPE_4__*,int ) ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 void* ngx_http_get_module_main_conf (TYPE_4__*,int ) ;
 TYPE_8__* ngx_http_lua_create_ctx (TYPE_4__*) ;
 int ngx_http_lua_generic_phase_post_read ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_lua_send_chain_link (TYPE_4__*,TYPE_8__*,int *) ;
 scalar_t__ ngx_http_read_client_request_body (TYPE_4__*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int ) ;
 scalar_t__ stub1 (TYPE_4__*) ;
 scalar_t__ stub2 (TYPE_4__*) ;

ngx_int_t
ngx_http_lua_rewrite_handler(ngx_http_request_t *r)
{
    ngx_http_lua_loc_conf_t *llcf;
    ngx_http_lua_ctx_t *ctx;
    ngx_int_t rc;
    ngx_http_lua_main_conf_t *lmcf;


    if (r->uri_changed) {
        return NGX_DECLINED;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua rewrite handler, uri:\"%V\" c:%ud", &r->uri,
                   r->main->count);

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);

    if (!lmcf->postponed_to_rewrite_phase_end) {
        ngx_http_core_main_conf_t *cmcf;
        ngx_http_phase_handler_t tmp;
        ngx_http_phase_handler_t *ph;
        ngx_http_phase_handler_t *cur_ph;
        ngx_http_phase_handler_t *last_ph;

        lmcf->postponed_to_rewrite_phase_end = 1;

        cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);

        ph = cmcf->phase_engine.handlers;
        cur_ph = &ph[r->phase_handler];
        last_ph = &ph[cur_ph->next - 1];







        if (cur_ph < last_ph) {
            dd("swapping the contents of cur_ph and last_ph...");

            tmp = *cur_ph;

            memmove(cur_ph, cur_ph + 1,
                    (last_ph - cur_ph) * sizeof (ngx_http_phase_handler_t));

            *last_ph = tmp;

            r->phase_handler--;

            return NGX_DECLINED;
        }
    }

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

    if (llcf->rewrite_handler == ((void*)0)) {
        dd("no rewrite handler found");
        return NGX_DECLINED;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    dd("ctx = %p", ctx);

    if (ctx == ((void*)0)) {
        ctx = ngx_http_lua_create_ctx(r);
        if (ctx == ((void*)0)) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }
    }

    dd("entered? %d", (int) ctx->entered_rewrite_phase);

    if (ctx->entered_rewrite_phase) {
        dd("rewriteby: calling wev handler");
        rc = ctx->resume_handler(r);
        dd("rewriteby: wev handler returns %d", (int) rc);

        if (rc == NGX_OK) {
            rc = NGX_DECLINED;
        }

        if (rc == NGX_DECLINED) {
            if (r->header_sent) {
                dd("header already sent");





                if (!ctx->eof) {
                    dd("eof not yet sent");

                    rc = ngx_http_lua_send_chain_link(r, ctx, ((void*)0)
                                                                            );
                    if (rc == NGX_ERROR || rc > NGX_OK) {
                        return rc;
                    }
                }

                return NGX_HTTP_OK;
            }

            r->write_event_handler = ngx_http_core_run_phases;
            ctx->entered_rewrite_phase = 0;

            return NGX_DECLINED;
        }

        return rc;
    }

    if (ctx->waiting_more_body) {
        return NGX_DONE;
    }

    if (llcf->force_read_body && !ctx->read_body_done) {
        r->request_body_in_single_buf = 1;
        r->request_body_in_persistent_file = 1;
        r->request_body_in_clean_file = 1;

        rc = ngx_http_read_client_request_body(r,
                                       ngx_http_lua_generic_phase_post_read);

        if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {


            r->main->count--;


            return rc;
        }

        if (rc == NGX_AGAIN) {
            ctx->waiting_more_body = 1;
            return NGX_DONE;
        }
    }

    dd("calling rewrite handler");
    return llcf->rewrite_handler(r);
}
