
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_16__ {TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_mail_session_t ;
struct TYPE_14__ {int connection; int name; } ;
struct TYPE_17__ {int state; int (* handler ) (TYPE_4__*,TYPE_5__*) ;TYPE_3__* response; int pool; TYPE_2__ peer; } ;
typedef TYPE_5__ ngx_mail_auth_http_ctx_t ;
struct TYPE_15__ {char* pos; char* last; char* start; } ;
struct TYPE_13__ {int log; } ;




 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_ERR ;
 int ngx_close_connection (int ) ;
 int ngx_destroy_pool (int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 int ngx_mail_auth_http_process_headers (TYPE_4__*,TYPE_5__*) ;
 int ngx_mail_session_internal_server_error (TYPE_4__*) ;
 int stub1 (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static void
ngx_mail_auth_http_ignore_status_line(ngx_mail_session_t *s,
    ngx_mail_auth_http_ctx_t *ctx)
{
    u_char *p, ch;
    enum {
        sw_start = 0,
        sw_H,
        sw_HT,
        sw_HTT,
        sw_HTTP,
        sw_skip,
        sw_almost_done
    } state;

    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, s->connection->log, 0,
                   "mail auth http process status line");

    state = ctx->state;

    for (p = ctx->response->pos; p < ctx->response->last; p++) {
        ch = *p;

        switch (state) {


        case sw_start:
            if (ch == 'H') {
                state = sw_H;
                break;
            }
            goto next;

        case sw_H:
            if (ch == 'T') {
                state = sw_HT;
                break;
            }
            goto next;

        case sw_HT:
            if (ch == 'T') {
                state = sw_HTT;
                break;
            }
            goto next;

        case sw_HTT:
            if (ch == 'P') {
                state = sw_HTTP;
                break;
            }
            goto next;

        case sw_HTTP:
            if (ch == '/') {
                state = sw_skip;
                break;
            }
            goto next;


        case sw_skip:
            switch (ch) {
            case 129:
                state = sw_almost_done;

                break;
            case 128:
                goto done;
            }
            break;


        case sw_almost_done:
            if (ch == 128) {
                goto done;
            }

            ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                          "auth http server %V sent invalid response",
                          ctx->peer.name);
            ngx_close_connection(ctx->peer.connection);
            ngx_destroy_pool(ctx->pool);
            ngx_mail_session_internal_server_error(s);
            return;
        }
    }

    ctx->response->pos = p;
    ctx->state = state;

    return;

next:

    p = ctx->response->start - 1;

done:

    ctx->response->pos = p + 1;
    ctx->state = 0;
    ctx->handler = ngx_mail_auth_http_process_headers;
    ctx->handler(s, ctx);
}
