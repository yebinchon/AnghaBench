
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int (* read_event_handler ) (TYPE_2__*) ;int (* write_event_handler ) (TYPE_2__*) ;TYPE_1__* main; int args; int uri; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_13__ {scalar_t__ write; scalar_t__ timedout; scalar_t__ delayed; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_14__ {scalar_t__ close; int log; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_11__ {int count; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_run_posted_requests (TYPE_4__*) ;
 int ngx_http_set_log_request (int ,TYPE_2__*) ;
 int ngx_http_terminate_request (TYPE_2__*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void
ngx_http_request_handler(ngx_event_t *ev)
{
    ngx_connection_t *c;
    ngx_http_request_t *r;

    c = ev->data;
    r = c->data;

    ngx_http_set_log_request(c->log, r);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http run request: \"%V?%V\"", &r->uri, &r->args);

    if (c->close) {
        r->main->count++;
        ngx_http_terminate_request(r, 0);
        ngx_http_run_posted_requests(c);
        return;
    }

    if (ev->delayed && ev->timedout) {
        ev->delayed = 0;
        ev->timedout = 0;
    }

    if (ev->write) {
        r->write_event_handler(r);

    } else {
        r->read_event_handler(r);
    }

    ngx_http_run_posted_requests(c);
}
