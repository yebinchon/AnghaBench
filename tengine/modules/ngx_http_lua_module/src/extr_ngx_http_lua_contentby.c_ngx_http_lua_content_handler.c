
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {int request_body_in_single_buf; int request_body_in_persistent_file; int request_body_in_clean_file; TYPE_2__* main; int uri; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_19__ {scalar_t__ (* content_handler ) (TYPE_3__*) ;scalar_t__ force_read_body; } ;
typedef TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_20__ {int entered_content_phase; int waiting_more_body; scalar_t__ (* resume_handler ) (TYPE_3__*) ;int read_body_done; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_17__ {int count; } ;
struct TYPE_16__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,...) ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 int ngx_http_lua_content_phase_post_read ;
 TYPE_5__* ngx_http_lua_create_ctx (TYPE_3__*) ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_read_client_request_body (TYPE_3__*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int ) ;
 scalar_t__ stub1 (TYPE_3__*) ;
 scalar_t__ stub2 (TYPE_3__*) ;

ngx_int_t
ngx_http_lua_content_handler(ngx_http_request_t *r)
{
    ngx_http_lua_loc_conf_t *llcf;
    ngx_http_lua_ctx_t *ctx;
    ngx_int_t rc;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua content handler, uri:\"%V\" c:%ud", &r->uri,
                   r->main->count);

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

    if (llcf->content_handler == ((void*)0)) {
        dd("no content handler found");
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

    dd("entered? %d", (int) ctx->entered_content_phase);

    if (ctx->waiting_more_body) {
        return NGX_DONE;
    }

    if (ctx->entered_content_phase) {
        dd("calling wev handler");
        rc = ctx->resume_handler(r);
        dd("wev handler returns %d", (int) rc);
        return rc;
    }

    if (llcf->force_read_body && !ctx->read_body_done) {
        r->request_body_in_single_buf = 1;
        r->request_body_in_persistent_file = 1;
        r->request_body_in_clean_file = 1;

        rc = ngx_http_read_client_request_body(r,
                                        ngx_http_lua_content_phase_post_read);

        if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {


            r->main->count--;

            return rc;
        }

        if (rc == NGX_AGAIN) {
            ctx->waiting_more_body = 1;

            return NGX_DONE;
        }
    }

    dd("setting entered");

    ctx->entered_content_phase = 1;

    dd("calling content handler");
    return llcf->content_handler(r);
}
