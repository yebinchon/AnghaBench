
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {TYPE_2__* buf; struct TYPE_7__* next; } ;
typedef TYPE_1__ ngx_chain_t ;
struct TYPE_8__ {int pos; int last; } ;
typedef TYPE_2__ ngx_buf_t ;


 scalar_t__ ngx_buf_size (TYPE_2__*) ;
 int ngx_copy (int ,int ,scalar_t__) ;
 TYPE_2__* ngx_create_temp_buf (int *,scalar_t__) ;

ngx_buf_t *
ngx_http_tfs_copy_buf_chain(ngx_pool_t *pool, ngx_chain_t *in)
{
    ngx_int_t len;
    ngx_buf_t *buf;
    ngx_chain_t *cl;

    if (in->next == ((void*)0)) {
        return in->buf;
    }

    len = 0;

    for (cl = in; cl; cl = cl->next) {
        len += ngx_buf_size(cl->buf);
    }

    buf = ngx_create_temp_buf(pool, len);

    if (buf == ((void*)0)) {
        return ((void*)0);
    }

    for (cl = in; cl; cl = cl->next) {
        buf->last = ngx_copy(buf->last, cl->buf->pos, ngx_buf_size(cl->buf));
    }
    return buf;
}
