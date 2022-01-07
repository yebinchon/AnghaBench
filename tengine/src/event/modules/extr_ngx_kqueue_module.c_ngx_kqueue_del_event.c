
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int disabled; size_t index; int data; int log; scalar_t__ active; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_6__ {scalar_t__ udata; } ;


 int EV_DELETE ;
 int NGX_CLOSE_EVENT ;
 int NGX_DISABLE_EVENT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 TYPE_4__* change_list ;
 size_t nchanges ;
 int ngx_event_ident (int ) ;
 int ngx_kqueue_set_event (TYPE_1__*,int ,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_kqueue_del_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    ngx_int_t rc;
    ngx_event_t *e;

    ev->active = 0;
    ev->disabled = 0;

    if (ev->index < nchanges
        && ((uintptr_t) change_list[ev->index].udata & (uintptr_t) ~1)
            == (uintptr_t) ev)
    {
        ngx_log_debug2(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                       "kevent deleted: %d: ft:%i",
                       ngx_event_ident(ev->data), event);



        nchanges--;

        if (ev->index < nchanges) {
            e = (ngx_event_t *)
                    ((uintptr_t) change_list[nchanges].udata & (uintptr_t) ~1);
            change_list[ev->index] = change_list[nchanges];
            e->index = ev->index;
        }

        return NGX_OK;
    }







    if (flags & NGX_CLOSE_EVENT) {
        return NGX_OK;
    }

    if (flags & NGX_DISABLE_EVENT) {
        ev->disabled = 1;

    } else {
        flags |= EV_DELETE;
    }

    rc = ngx_kqueue_set_event(ev, event, flags);

    return rc;
}
