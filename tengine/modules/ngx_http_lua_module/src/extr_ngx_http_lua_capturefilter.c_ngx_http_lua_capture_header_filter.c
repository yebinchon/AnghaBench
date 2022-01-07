
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_14__ {int filter_need_in_memory; int header_sent; scalar_t__ method; int header_only; TYPE_1__* connection; TYPE_3__* post_subrequest; int uri; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_15__ {scalar_t__ handler; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_http_post_subrequest_t ;
struct TYPE_16__ {TYPE_5__* ctx; } ;
typedef TYPE_4__ ngx_http_lua_post_subrequest_data_t ;
struct TYPE_17__ {int header_sent; scalar_t__ capture; int * body; int ** last_body; int index; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_13__ {int log; } ;


 scalar_t__ NGX_HTTP_HEAD ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int dd (char*,TYPE_5__*) ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_next_header_filter (TYPE_2__*) ;
 scalar_t__ ngx_http_lua_post_subrequest ;
 int ngx_http_set_ctx (TYPE_2__*,TYPE_5__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_capture_header_filter(ngx_http_request_t *r)
{
    ngx_http_post_subrequest_t *psr;
    ngx_http_lua_ctx_t *old_ctx;
    ngx_http_lua_ctx_t *ctx;

    ngx_http_lua_post_subrequest_data_t *psr_data;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua capture header filter, uri \"%V\"", &r->uri);

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    dd("old ctx: %p", ctx);

    if (ctx == ((void*)0) || ! ctx->capture) {

        psr = r->post_subrequest;

        if (psr != ((void*)0)
            && psr->handler == ngx_http_lua_post_subrequest
            && psr->data != ((void*)0))
        {



            psr_data = psr->data;

            old_ctx = psr_data->ctx;

            if (ctx == ((void*)0)) {
                ctx = old_ctx;
                ngx_http_set_ctx(r, ctx, ngx_http_lua_module);

            } else {
                ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                               "lua restoring ctx with capture %d, index %d",
                               old_ctx->capture, old_ctx->index);

                ctx->capture = old_ctx->capture;
                ctx->index = old_ctx->index;
                ctx->body = ((void*)0);
                ctx->last_body = &ctx->body;
                psr_data->ctx = ctx;
            }
        }
    }

    if (ctx && ctx->capture) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua capturing response body");


        r->filter_need_in_memory = 1;
        r->header_sent = 1;
        ctx->header_sent = 1;

        if (r->method == NGX_HTTP_HEAD) {
            r->header_only = 1;
        }

        return NGX_OK;
    }

    return ngx_http_lua_next_header_filter(r);
}
