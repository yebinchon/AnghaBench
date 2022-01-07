
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u_char ;
struct aiocb {int dummy; } ;
typedef int ssize_t ;
typedef int off_t ;
typedef int ngx_pool_t ;
struct TYPE_21__ {struct TYPE_21__* data; } ;
struct TYPE_17__ {int fd; int log; TYPE_8__ name; TYPE_5__* aio; } ;
typedef TYPE_3__ ngx_file_t ;
struct TYPE_18__ {int active; scalar_t__ complete; scalar_t__ ready; int handler; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_15__ {TYPE_4__* sival_ptr; } ;
struct TYPE_16__ {TYPE_1__ sigev_value; int sigev_notify; int sigev_notify_kqueue; } ;
struct TYPE_20__ {size_t aio_nbytes; TYPE_2__ aio_sigevent; int * aio_buf; int aio_offset; int aio_fildes; } ;
struct TYPE_19__ {scalar_t__ err; int file; TYPE_7__ aiocb; int nbytes; TYPE_4__ event; } ;
typedef TYPE_5__ ngx_event_aio_t ;


 int NGX_AGAIN ;
 int NGX_EAGAIN ;
 int NGX_ENOSYS ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_CORE ;
 scalar_t__ NGX_OK ;
 int SIGEV_KEVENT ;
 int aio_read (TYPE_7__*) ;
 int ngx_errno ;
 scalar_t__ ngx_file_aio ;
 int ngx_file_aio_event_handler ;
 scalar_t__ ngx_file_aio_init (TYPE_3__*,int *) ;
 int ngx_file_aio_result (int ,TYPE_5__*,TYPE_4__*) ;
 int ngx_kqueue ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int) ;
 int ngx_log_debug4 (int ,int ,int ,char*,scalar_t__,int ,size_t,TYPE_8__*) ;
 int ngx_log_error (int ,int ,int,char*,TYPE_8__*) ;
 int ngx_memzero (TYPE_7__*,int) ;
 int ngx_read_file (TYPE_3__*,int *,size_t,int ) ;
 int ngx_set_errno (scalar_t__) ;

ssize_t
ngx_file_aio_read(ngx_file_t *file, u_char *buf, size_t size, off_t offset,
    ngx_pool_t *pool)
{
    int n;
    ngx_event_t *ev;
    ngx_event_aio_t *aio;

    if (!ngx_file_aio) {
        return ngx_read_file(file, buf, size, offset);
    }

    if (file->aio == ((void*)0) && ngx_file_aio_init(file, pool) != NGX_OK) {
        return NGX_ERROR;
    }

    aio = file->aio;
    ev = &aio->event;

    if (!ev->ready) {
        ngx_log_error(NGX_LOG_ALERT, file->log, 0,
                      "second aio post for \"%V\"", &file->name);
        return NGX_AGAIN;
    }

    ngx_log_debug4(NGX_LOG_DEBUG_CORE, file->log, 0,
                   "aio complete:%d @%O:%uz %V",
                   ev->complete, offset, size, &file->name);

    if (ev->complete) {
        ev->complete = 0;
        ngx_set_errno(aio->err);

        if (aio->err == 0) {
            return aio->nbytes;
        }

        ngx_log_error(NGX_LOG_CRIT, file->log, ngx_errno,
                      "aio read \"%s\" failed", file->name.data);

        return NGX_ERROR;
    }

    ngx_memzero(&aio->aiocb, sizeof(struct aiocb));

    aio->aiocb.aio_fildes = file->fd;
    aio->aiocb.aio_offset = offset;
    aio->aiocb.aio_buf = buf;
    aio->aiocb.aio_nbytes = size;





    ev->handler = ngx_file_aio_event_handler;

    n = aio_read(&aio->aiocb);

    if (n == -1) {
        n = ngx_errno;

        if (n == NGX_EAGAIN) {
            return ngx_read_file(file, buf, size, offset);
        }

        ngx_log_error(NGX_LOG_CRIT, file->log, n,
                      "aio_read(\"%V\") failed", &file->name);

        if (n == NGX_ENOSYS) {
            ngx_file_aio = 0;
            return ngx_read_file(file, buf, size, offset);
        }

        return NGX_ERROR;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_CORE, file->log, 0,
                   "aio_read: fd:%d %d", file->fd, n);

    ev->active = 1;
    ev->ready = 0;
    ev->complete = 0;

    return ngx_file_aio_result(aio->file, aio, ev);
}
