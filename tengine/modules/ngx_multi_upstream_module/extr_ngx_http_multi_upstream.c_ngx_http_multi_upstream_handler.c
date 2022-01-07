
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write; scalar_t__ timedout; int * data; } ;
typedef TYPE_1__ ngx_event_t ;
typedef int ngx_connection_t ;


 int NGX_HTTP_UPSTREAM_FT_TIMEOUT ;
 int ngx_http_multi_upstream_next (int *,int ) ;
 int ngx_http_multi_upstream_process (int *,int ) ;

void
ngx_http_multi_upstream_handler(ngx_event_t *ev)
{
    ngx_connection_t *pc;

    pc = ev->data;

    if (ev->timedout) {
        ngx_http_multi_upstream_next(pc, NGX_HTTP_UPSTREAM_FT_TIMEOUT);
        return;
    }

    ngx_http_multi_upstream_process(pc, ev->write);
}
