
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int write; } ;
typedef TYPE_1__ ngx_event_t ;


 int ngx_stream_proxy_process_connection (TYPE_1__*,int) ;

__attribute__((used)) static void
ngx_stream_proxy_upstream_handler(ngx_event_t *ev)
{
    ngx_stream_proxy_process_connection(ev, !ev->write);
}
