
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_8__ {int size; int count; int iovs; } ;
typedef TYPE_2__ ngx_iovec_t ;
typedef int ngx_err_t ;
struct TYPE_9__ {TYPE_1__* write; int log; int fd; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_7__ {int error; } ;


 int NGX_AGAIN ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int ngx_connection_error (TYPE_3__*,int,char*) ;
 int ngx_errno ;
 int ngx_log_debug0 (int ,int ,int,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int ) ;
 int writev (int ,int ,int ) ;

ssize_t
ngx_writev(ngx_connection_t *c, ngx_iovec_t *vec)
{
    ssize_t n;
    ngx_err_t err;

eintr:

    n = writev(c->fd, vec->iovs, vec->count);

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "writev: %z of %uz", n, vec->size);

    if (n == -1) {
        err = ngx_errno;

        switch (err) {
        case 129:
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "writev() not ready");
            return NGX_AGAIN;

        case 128:
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "writev() was interrupted");
            goto eintr;

        default:
            c->write->error = 1;
            ngx_connection_error(c, err, "writev() failed");
            return NGX_ERROR;
        }
    }

    return n;
}
