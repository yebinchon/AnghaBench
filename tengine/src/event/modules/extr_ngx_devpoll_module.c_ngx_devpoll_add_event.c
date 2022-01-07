
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int active; int log; TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_6__ {int fd; } ;
typedef TYPE_2__ ngx_connection_t ;


 int NGX_LOG_DEBUG_EVENT ;
 int NGX_READ_EVENT ;
 int POLLIN ;
 int POLLOUT ;
 int ngx_devpoll_set_event (TYPE_1__*,int ,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_devpoll_add_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    ev->active = 1;

    return ngx_devpoll_set_event(ev, event, 0);
}
