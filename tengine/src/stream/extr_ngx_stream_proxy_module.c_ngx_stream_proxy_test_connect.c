
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int socklen_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int fd; TYPE_2__* read; TYPE_1__* write; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_7__ {int kq_errno; } ;
struct TYPE_6__ {int kq_errno; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int NGX_USE_KQUEUE_EVENT ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int getsockopt (int ,int ,int ,void*,int*) ;
 int ngx_connection_error (TYPE_3__*,int,char*) ;
 int ngx_event_flags ;
 int ngx_socket_errno ;

__attribute__((used)) static ngx_int_t
ngx_stream_proxy_test_connect(ngx_connection_t *c)
{
    int err;
    socklen_t len;
    {
        err = 0;
        len = sizeof(int);






        if (getsockopt(c->fd, SOL_SOCKET, SO_ERROR, (void *) &err, &len)
            == -1)
        {
            err = ngx_socket_errno;
        }

        if (err) {
            (void) ngx_connection_error(c, err, "connect() failed");
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
