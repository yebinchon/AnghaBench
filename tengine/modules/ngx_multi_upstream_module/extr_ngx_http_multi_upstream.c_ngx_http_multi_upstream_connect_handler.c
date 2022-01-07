
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ ssl; } ;
typedef TYPE_1__ ngx_http_upstream_t ;
struct TYPE_14__ {TYPE_1__* upstream; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_15__ {scalar_t__ timedout; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_16__ {int * ssl; int log; int write; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_HTTP_UPSTREAM_FT_ERROR ;
 int NGX_HTTP_UPSTREAM_FT_TIMEOUT ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_del_timer (int ) ;
 int ngx_http_multi_upstream_connect_init (TYPE_4__*) ;
 int ngx_http_multi_upstream_next (TYPE_4__*,int ) ;
 int ngx_http_upstream_ssl_init_connection (TYPE_2__*,TYPE_1__*,TYPE_4__*) ;
 scalar_t__ ngx_http_upstream_test_connect (TYPE_4__*) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_4__*) ;

void
ngx_http_multi_upstream_connect_handler(ngx_event_t *ev)
{
    ngx_connection_t *pc;

    ngx_http_request_t *r;
    ngx_http_upstream_t *u;

    pc = ev->data;
    r = pc->data;
    u = r->upstream;

    if (ev->timedout) {
        ngx_log_error(NGX_LOG_ERR, pc->log, 0, "multi: connect timeout %p", pc);
        ngx_http_multi_upstream_next(pc, NGX_HTTP_UPSTREAM_FT_TIMEOUT);
        return;
    }

    ngx_del_timer(pc->write);

    if (ngx_http_upstream_test_connect(pc) != NGX_OK) {
        ngx_log_error(NGX_LOG_ERR, pc->log, 0, "multi: connect failed %p", pc);
        ngx_http_multi_upstream_next(pc, NGX_HTTP_UPSTREAM_FT_ERROR);
        return;
    }
    ngx_http_multi_upstream_connect_init(pc);
}
