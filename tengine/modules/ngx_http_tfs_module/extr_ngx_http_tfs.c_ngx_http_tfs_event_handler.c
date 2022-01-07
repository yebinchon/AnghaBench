
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct TYPE_16__ {scalar_t__ code; } ;
struct TYPE_17__ {TYPE_1__ action; } ;
struct TYPE_18__ {int (* read_event_handler ) (TYPE_4__*,TYPE_3__*) ;int (* write_event_handler ) (TYPE_4__*,TYPE_3__*) ;TYPE_2__ r_ctx; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_http_tfs_t ;
struct TYPE_19__ {int args; int uri; TYPE_7__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_20__ {TYPE_4__* current_request; } ;
typedef TYPE_5__ ngx_http_log_ctx_t ;
struct TYPE_21__ {scalar_t__ write; TYPE_7__* data; } ;
typedef TYPE_6__ ngx_event_t ;
struct TYPE_22__ {TYPE_12__* log; TYPE_3__* data; } ;
typedef TYPE_7__ ngx_connection_t ;
struct TYPE_15__ {TYPE_5__* data; } ;


 scalar_t__ NGX_HTTP_TFS_ACTION_KEEPALIVE ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_run_posted_requests (TYPE_7__*) ;
 int ngx_log_debug2 (int ,TYPE_12__*,int ,char*,int *,int *) ;
 int stub1 (TYPE_4__*,TYPE_3__*) ;
 int stub2 (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void
ngx_http_tfs_event_handler(ngx_event_t *ev)
{
    ngx_http_tfs_t *t;
    ngx_connection_t *c;
    ngx_http_request_t *r;
    ngx_http_log_ctx_t *ctx;

    c = ev->data;
    t = c->data;

    r = t->data;
    c = r->connection;

    if (t->r_ctx.action.code != NGX_HTTP_TFS_ACTION_KEEPALIVE) {
        ctx = c->log->data;
        ctx->current_request = r;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http tfs request: \"%V?%V\"", &r->uri, &r->args);

    if (ev->write) {
        t->write_event_handler(r, t);

    } else {
        t->read_event_handler(r, t);
    }

    ngx_http_run_posted_requests(c);
}
