
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
typedef int ngx_event_handler_pt ;
struct TYPE_3__ {int log; int handler; } ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int ep ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*) ;
 TYPE_1__ notify_event ;
 scalar_t__ port_send (int ,int ,TYPE_1__*) ;

__attribute__((used)) static ngx_int_t
ngx_eventport_notify(ngx_event_handler_pt handler)
{
    notify_event.handler = handler;

    if (port_send(ep, 0, &notify_event) != 0) {
        ngx_log_error(NGX_LOG_ALERT, notify_event.log, ngx_errno,
                      "port_send() failed");
        return NGX_ERROR;
    }

    return NGX_OK;
}
