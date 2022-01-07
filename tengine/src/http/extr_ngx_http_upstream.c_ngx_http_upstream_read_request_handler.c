
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_http_upstream_t ;
struct TYPE_8__ {TYPE_3__* connection; int * upstream; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {int timedout; TYPE_1__* read; int log; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_7__ {scalar_t__ timedout; } ;


 int NGX_HTTP_REQUEST_TIME_OUT ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_upstream_finalize_request (TYPE_2__*,int *,int ) ;
 int ngx_http_upstream_send_request (TYPE_2__*,int *,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_upstream_read_request_handler(ngx_http_request_t *r)
{
    ngx_connection_t *c;
    ngx_http_upstream_t *u;

    c = r->connection;
    u = r->upstream;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http upstream read request handler");

    if (c->read->timedout) {
        c->timedout = 1;
        ngx_http_upstream_finalize_request(r, u, NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    ngx_http_upstream_send_request(r, u, 0);
}
