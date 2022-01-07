
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int ngx_mail_session_t ;
struct TYPE_11__ {int name; } ;
struct TYPE_12__ {int pool; int (* handler ) (int *,TYPE_2__*) ;TYPE_9__* response; TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_mail_auth_http_ctx_t ;
struct TYPE_13__ {int log; scalar_t__ timedout; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_14__ {int * data; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_15__ {scalar_t__ end; scalar_t__ last; int pos; } ;


 scalar_t__ NGX_AGAIN ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_ERR ;
 int ngx_close_connection (TYPE_4__*) ;
 TYPE_9__* ngx_create_temp_buf (int ,int) ;
 int ngx_destroy_pool (int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 int ngx_mail_auth_http_module ;
 TYPE_2__* ngx_mail_get_module_ctx (int *,int ) ;
 int ngx_mail_session_internal_server_error (int *) ;
 scalar_t__ ngx_recv (TYPE_4__*,int ,scalar_t__) ;
 int stub1 (int *,TYPE_2__*) ;

__attribute__((used)) static void
ngx_mail_auth_http_read_handler(ngx_event_t *rev)
{
    ssize_t n, size;
    ngx_connection_t *c;
    ngx_mail_session_t *s;
    ngx_mail_auth_http_ctx_t *ctx;

    c = rev->data;
    s = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, rev->log, 0,
                   "mail auth http read handler");

    ctx = ngx_mail_get_module_ctx(s, ngx_mail_auth_http_module);

    if (rev->timedout) {
        ngx_log_error(NGX_LOG_ERR, rev->log, NGX_ETIMEDOUT,
                      "auth http server %V timed out", ctx->peer.name);
        ngx_close_connection(c);
        ngx_destroy_pool(ctx->pool);
        ngx_mail_session_internal_server_error(s);
        return;
    }

    if (ctx->response == ((void*)0)) {
        ctx->response = ngx_create_temp_buf(ctx->pool, 1024);
        if (ctx->response == ((void*)0)) {
            ngx_close_connection(c);
            ngx_destroy_pool(ctx->pool);
            ngx_mail_session_internal_server_error(s);
            return;
        }
    }

    size = ctx->response->end - ctx->response->last;

    n = ngx_recv(c, ctx->response->pos, size);

    if (n > 0) {
        ctx->response->last += n;

        ctx->handler(s, ctx);
        return;
    }

    if (n == NGX_AGAIN) {
        return;
    }

    ngx_close_connection(c);
    ngx_destroy_pool(ctx->pool);
    ngx_mail_session_internal_server_error(s);
}
