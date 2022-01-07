
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ multi; } ;
typedef TYPE_1__ ngx_http_upstream_t ;
struct TYPE_13__ {TYPE_1__* upstream; TYPE_4__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_14__ {scalar_t__ timedout; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_15__ {int timedout; TYPE_5__* log; TYPE_3__* write; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_16__ {char* action; } ;


 int NGX_ETIMEDOUT ;
 int NGX_HTTP_REQUEST_TIME_OUT ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_connection_error (TYPE_4__*,int ,char*) ;
 int ngx_http_multi_upstream_process_non_buffered_request (TYPE_2__*) ;
 int ngx_http_upstream_finalize_request (TYPE_2__*,TYPE_1__*,int ) ;
 int ngx_http_upstream_process_non_buffered_request (TYPE_2__*,int) ;
 int ngx_log_debug0 (int ,TYPE_5__*,int ,char*) ;

__attribute__((used)) static void
ngx_http_upstream_process_non_buffered_downstream(ngx_http_request_t *r)
{
    ngx_event_t *wev;
    ngx_connection_t *c;
    ngx_http_upstream_t *u;

    c = r->connection;
    u = r->upstream;
    wev = c->write;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http upstream process non buffered downstream");

    c->log->action = "sending to client";

    if (wev->timedout) {
        c->timedout = 1;
        ngx_connection_error(c, NGX_ETIMEDOUT, "client timed out");
        ngx_http_upstream_finalize_request(r, u, NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }
    ngx_http_upstream_process_non_buffered_request(r, 1);
}
