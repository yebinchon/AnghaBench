
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_6__ {TYPE_3__* read; int log; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_7__ {int (* handler ) (TYPE_3__*) ;} ;


 int NGX_LOG_DEBUG_EVENT ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void
ngx_ssl_write_handler(ngx_event_t *wev)
{
    ngx_connection_t *c;

    c = wev->data;

    ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL write handler");

    c->read->handler(c->read);
}
