
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_6__ {int sndlowat; int fd; TYPE_1__* write; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_5__ {size_t available; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int NGX_USE_KQUEUE_EVENT ;
 int SOL_SOCKET ;
 int SO_SNDLOWAT ;
 int ngx_connection_error (TYPE_2__*,int ,char*) ;
 int ngx_event_flags ;
 int ngx_socket_errno ;
 int setsockopt (int ,int ,int ,void const*,int) ;

ngx_int_t
ngx_send_lowat(ngx_connection_t *c, size_t lowat)
{
    int sndlowat;
    if (lowat == 0 || c->sndlowat) {
        return NGX_OK;
    }

    sndlowat = (int) lowat;

    if (setsockopt(c->fd, SOL_SOCKET, SO_SNDLOWAT,
                   (const void *) &sndlowat, sizeof(int))
        == -1)
    {
        ngx_connection_error(c, ngx_socket_errno,
                             "setsockopt(SO_SNDLOWAT) failed");
        return NGX_ERROR;
    }

    c->sndlowat = 1;

    return NGX_OK;
}
