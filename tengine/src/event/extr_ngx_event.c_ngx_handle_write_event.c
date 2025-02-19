
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {scalar_t__ ready; scalar_t__ oneshot; scalar_t__ active; int * data; } ;
typedef TYPE_1__ ngx_event_t ;
typedef int ngx_connection_t ;


 int NGX_CLEAR_EVENT ;
 scalar_t__ NGX_ERROR ;
 int NGX_LEVEL_EVENT ;
 int NGX_LOWAT_EVENT ;
 scalar_t__ NGX_OK ;
 int NGX_USE_CLEAR_EVENT ;
 int NGX_USE_EVENTPORT_EVENT ;
 int NGX_USE_LEVEL_EVENT ;
 int NGX_WRITE_EVENT ;
 scalar_t__ ngx_add_event (TYPE_1__*,int ,int) ;
 scalar_t__ ngx_del_event (TYPE_1__*,int ,int) ;
 int ngx_event_flags ;
 scalar_t__ ngx_send_lowat (int *,size_t) ;

ngx_int_t
ngx_handle_write_event(ngx_event_t *wev, size_t lowat)
{
    ngx_connection_t *c;

    if (lowat) {
        c = wev->data;

        if (ngx_send_lowat(c, lowat) == NGX_ERROR) {
            return NGX_ERROR;
        }
    }

    if (ngx_event_flags & NGX_USE_CLEAR_EVENT) {



        if (!wev->active && !wev->ready) {
            if (ngx_add_event(wev, NGX_WRITE_EVENT,
                              NGX_CLEAR_EVENT | (lowat ? NGX_LOWAT_EVENT : 0))
                == NGX_ERROR)
            {
                return NGX_ERROR;
            }
        }

        return NGX_OK;

    } else if (ngx_event_flags & NGX_USE_LEVEL_EVENT) {



        if (!wev->active && !wev->ready) {
            if (ngx_add_event(wev, NGX_WRITE_EVENT, NGX_LEVEL_EVENT)
                == NGX_ERROR)
            {
                return NGX_ERROR;
            }

            return NGX_OK;
        }

        if (wev->active && wev->ready) {
            if (ngx_del_event(wev, NGX_WRITE_EVENT, NGX_LEVEL_EVENT)
                == NGX_ERROR)
            {
                return NGX_ERROR;
            }

            return NGX_OK;
        }

    } else if (ngx_event_flags & NGX_USE_EVENTPORT_EVENT) {



        if (!wev->active && !wev->ready) {
            if (ngx_add_event(wev, NGX_WRITE_EVENT, 0) == NGX_ERROR) {
                return NGX_ERROR;
            }

            return NGX_OK;
        }

        if (wev->oneshot && wev->ready) {
            if (ngx_del_event(wev, NGX_WRITE_EVENT, 0) == NGX_ERROR) {
                return NGX_ERROR;
            }

            return NGX_OK;
        }
    }



    return NGX_OK;
}
