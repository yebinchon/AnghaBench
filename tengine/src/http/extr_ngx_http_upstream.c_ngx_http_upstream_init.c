
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ stream; TYPE_2__* connection; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_9__ {TYPE_7__* write; TYPE_6__* read; int log; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_11__ {int active; } ;
struct TYPE_10__ {scalar_t__ timer_set; } ;


 int NGX_CLEAR_EVENT ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_USE_CLEAR_EVENT ;
 int NGX_WRITE_EVENT ;
 scalar_t__ ngx_add_event (TYPE_7__*,int ,int ) ;
 int ngx_del_timer (TYPE_6__*) ;
 int ngx_event_flags ;
 int ngx_http_finalize_request (TYPE_1__*,int ) ;
 int ngx_http_upstream_init_request (TYPE_1__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;

void
ngx_http_upstream_init(ngx_http_request_t *r)
{
    ngx_connection_t *c;

    c = r->connection;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http init upstream, client timer: %d", c->read->timer_set);
    if (c->read->timer_set) {
        ngx_del_timer(c->read);
    }

    if (ngx_event_flags & NGX_USE_CLEAR_EVENT) {

        if (!c->write->active) {
            if (ngx_add_event(c->write, NGX_WRITE_EVENT, NGX_CLEAR_EVENT)
                == NGX_ERROR)
            {
                ngx_http_finalize_request(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }
        }
    }

    ngx_http_upstream_init_request(r);
}
