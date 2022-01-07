
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct iovec {scalar_t__ iov_len; void* iov_base; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_11__ {scalar_t__ pending_eof; scalar_t__ available; int eof; int error; scalar_t__ ready; scalar_t__ kq_errno; } ;
typedef TYPE_2__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_12__ {TYPE_2__* read; int log; int fd; int pool; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_13__ {struct TYPE_13__* next; TYPE_1__* buf; } ;
typedef TYPE_4__ ngx_chain_t ;
struct TYPE_14__ {scalar_t__ nelts; int size; int nalloc; struct iovec* elts; int pool; } ;
typedef TYPE_5__ ngx_array_t ;
struct TYPE_10__ {int * end; int * last; } ;


 scalar_t__ IOV_MAX ;
 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_EAGAIN ;
 scalar_t__ NGX_EINTR ;
 scalar_t__ NGX_ERROR ;
 int NGX_IOVS_PREALLOCATE ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_INFO ;
 int NGX_USE_EPOLL_EVENT ;
 int NGX_USE_GREEDY_EVENT ;
 int NGX_USE_KQUEUE_EVENT ;
 struct iovec* ngx_array_push (TYPE_5__*) ;
 scalar_t__ ngx_connection_error (TYPE_3__*,scalar_t__,char*) ;
 int ngx_event_flags ;
 int ngx_log_debug0 (int ,int ,scalar_t__,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,scalar_t__) ;
 int ngx_log_debug3 (int ,int ,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,scalar_t__,char*) ;
 int ngx_set_socket_errno (scalar_t__) ;
 scalar_t__ ngx_socket_errno ;
 scalar_t__ ngx_use_epoll_rdhup ;
 scalar_t__ readv (int ,struct iovec*,scalar_t__) ;

ssize_t
ngx_readv_chain(ngx_connection_t *c, ngx_chain_t *chain, off_t limit)
{
    u_char *prev;
    ssize_t n, size;
    ngx_err_t err;
    ngx_array_t vec;
    ngx_event_t *rev;
    struct iovec *iov, iovs[NGX_IOVS_PREALLOCATE];

    rev = c->read;
    prev = ((void*)0);
    iov = ((void*)0);
    size = 0;

    vec.elts = iovs;
    vec.nelts = 0;
    vec.size = sizeof(struct iovec);
    vec.nalloc = NGX_IOVS_PREALLOCATE;
    vec.pool = c->pool;



    while (chain) {
        n = chain->buf->end - chain->buf->last;

        if (limit) {
            if (size >= limit) {
                break;
            }

            if (size + n > limit) {
                n = (ssize_t) (limit - size);
            }
        }

        if (prev == chain->buf->last) {
            iov->iov_len += n;

        } else {
            if (vec.nelts >= IOV_MAX) {
                break;
            }

            iov = ngx_array_push(&vec);
            if (iov == ((void*)0)) {
                return NGX_ERROR;
            }

            iov->iov_base = (void *) chain->buf->last;
            iov->iov_len = n;
        }

        size += n;
        prev = chain->buf->end;
        chain = chain->next;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "readv: %ui, last:%uz", vec.nelts, iov->iov_len);

    do {
        n = readv(c->fd, (struct iovec *) vec.elts, vec.nelts);

        if (n == 0) {
            rev->ready = 0;
            rev->eof = 1;
            return 0;
        }

        if (n > 0) {
            if (n < size && !(ngx_event_flags & NGX_USE_GREEDY_EVENT)) {
                rev->ready = 0;
            }

            return n;
        }

        err = ngx_socket_errno;

        if (err == NGX_EAGAIN || err == NGX_EINTR) {
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "readv() not ready");
            n = NGX_AGAIN;

        } else {
            n = ngx_connection_error(c, err, "readv() failed");
            break;
        }

    } while (err == NGX_EINTR);

    rev->ready = 0;

    if (n == NGX_ERROR) {
        c->read->error = 1;
    }

    return n;
}
