
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int ngx_mail_session_t ;
struct TYPE_15__ {int name; } ;
struct TYPE_17__ {int pool; TYPE_2__* request; TYPE_1__ peer; } ;
typedef TYPE_3__ ngx_mail_auth_http_ctx_t ;
struct TYPE_18__ {int timeout; } ;
typedef TYPE_4__ ngx_mail_auth_http_conf_t ;
struct TYPE_19__ {scalar_t__ timer_set; int handler; int log; scalar_t__ timedout; TYPE_6__* data; } ;
typedef TYPE_5__ ngx_event_t ;
struct TYPE_20__ {int * data; } ;
typedef TYPE_6__ ngx_connection_t ;
struct TYPE_16__ {scalar_t__ last; scalar_t__ pos; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_5__*,int ) ;
 int ngx_close_connection (TYPE_6__*) ;
 int ngx_del_timer (TYPE_5__*) ;
 int ngx_destroy_pool (int ) ;
 scalar_t__ ngx_handle_write_event (TYPE_5__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 int ngx_mail_auth_http_dummy_handler ;
 int ngx_mail_auth_http_module ;
 TYPE_3__* ngx_mail_get_module_ctx (int *,int ) ;
 TYPE_4__* ngx_mail_get_module_srv_conf (int *,int ) ;
 int ngx_mail_session_internal_server_error (int *) ;
 scalar_t__ ngx_send (TYPE_6__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ngx_mail_auth_http_write_handler(ngx_event_t *wev)
{
    ssize_t n, size;
    ngx_connection_t *c;
    ngx_mail_session_t *s;
    ngx_mail_auth_http_ctx_t *ctx;
    ngx_mail_auth_http_conf_t *ahcf;

    c = wev->data;
    s = c->data;

    ctx = ngx_mail_get_module_ctx(s, ngx_mail_auth_http_module);

    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, wev->log, 0,
                   "mail auth http write handler");

    if (wev->timedout) {
        ngx_log_error(NGX_LOG_ERR, wev->log, NGX_ETIMEDOUT,
                      "auth http server %V timed out", ctx->peer.name);
        ngx_close_connection(c);
        ngx_destroy_pool(ctx->pool);
        ngx_mail_session_internal_server_error(s);
        return;
    }

    size = ctx->request->last - ctx->request->pos;

    n = ngx_send(c, ctx->request->pos, size);

    if (n == NGX_ERROR) {
        ngx_close_connection(c);
        ngx_destroy_pool(ctx->pool);
        ngx_mail_session_internal_server_error(s);
        return;
    }

    if (n > 0) {
        ctx->request->pos += n;

        if (n == size) {
            wev->handler = ngx_mail_auth_http_dummy_handler;

            if (wev->timer_set) {
                ngx_del_timer(wev);
            }

            if (ngx_handle_write_event(wev, 0) != NGX_OK) {
                ngx_close_connection(c);
                ngx_destroy_pool(ctx->pool);
                ngx_mail_session_internal_server_error(s);
            }

            return;
        }
    }

    if (!wev->timer_set) {
        ahcf = ngx_mail_get_module_srv_conf(s, ngx_mail_auth_http_module);
        ngx_add_timer(wev, ahcf->timeout);
    }
}
