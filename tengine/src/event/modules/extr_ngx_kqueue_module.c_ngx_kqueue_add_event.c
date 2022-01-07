
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {int active; int oneshot; size_t index; int log; TYPE_2__* data; scalar_t__ disabled; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_8__ {int fd; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_9__ {scalar_t__ flags; scalar_t__ udata; } ;


 int EV_ADD ;
 scalar_t__ EV_DISABLE ;
 int EV_ENABLE ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 int NGX_ONESHOT_EVENT ;
 TYPE_6__* change_list ;
 size_t nchanges ;
 int ngx_event_ident (TYPE_2__*) ;
 int ngx_kqueue_set_event (TYPE_1__*,int ,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_kqueue_add_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    ngx_int_t rc;





    ev->active = 1;
    ev->disabled = 0;
    ev->oneshot = (flags & NGX_ONESHOT_EVENT) ? 1 : 0;
    rc = ngx_kqueue_set_event(ev, event, EV_ADD|EV_ENABLE|flags);

    return rc;
}
