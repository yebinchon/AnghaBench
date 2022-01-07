
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ handler; } ;
typedef TYPE_1__ ngx_resolver_ctx_t ;
struct TYPE_11__ {TYPE_1__* resolver_ctx; } ;
typedef TYPE_2__ ngx_mail_session_t ;
struct TYPE_12__ {TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_13__ {int log; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_LOG_DEBUG_MAIL ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_handle_read_event (TYPE_3__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_mail_close_connection (TYPE_4__*) ;
 scalar_t__ ngx_mail_smtp_resolve_addr_handler ;
 scalar_t__ ngx_mail_smtp_resolve_name_handler ;
 int ngx_resolve_addr_done (TYPE_1__*) ;
 int ngx_resolve_name_done (TYPE_1__*) ;

__attribute__((used)) static void
ngx_mail_smtp_block_reading(ngx_event_t *rev)
{
    ngx_connection_t *c;
    ngx_mail_session_t *s;
    ngx_resolver_ctx_t *ctx;

    c = rev->data;
    s = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, c->log, 0, "smtp reading blocked");

    if (ngx_handle_read_event(rev, 0) != NGX_OK) {

        if (s->resolver_ctx) {
            ctx = s->resolver_ctx;

            if (ctx->handler == ngx_mail_smtp_resolve_addr_handler) {
                ngx_resolve_addr_done(ctx);

            } else if (ctx->handler == ngx_mail_smtp_resolve_name_handler) {
                ngx_resolve_name_done(ctx);
            }

            s->resolver_ctx = ((void*)0);
        }

        ngx_mail_close_connection(c);
    }
}
