
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int socklen_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {TYPE_2__* log; int fd; TYPE_1__* write; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_7__ {char* action; } ;
struct TYPE_6__ {int kq_errno; scalar_t__ pending_eof; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int NGX_USE_KQUEUE_EVENT ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int getsockopt (int ,int ,int ,void*,int*) ;
 int ngx_connection_error (TYPE_3__*,int,char*) ;
 int ngx_errno ;
 int ngx_event_flags ;

ngx_int_t
ngx_http_tfs_test_connect(ngx_connection_t *c)
{
    int err;
    socklen_t len;
    {
        err = 0;
        len = sizeof(int);






        if (getsockopt(c->fd, SOL_SOCKET, SO_ERROR, (void *) &err, &len)
            == -1)
        {
            err = ngx_errno;
        }

        if (err) {
            c->log->action = "connecting to upstream";
            (void) ngx_connection_error(c, err, "connect() failed");
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
