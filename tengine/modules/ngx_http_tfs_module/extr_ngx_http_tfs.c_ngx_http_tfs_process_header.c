
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {int last; scalar_t__ pos; } ;
struct TYPE_9__ {scalar_t__ header_size; scalar_t__ (* input_filter ) (TYPE_3__*) ;TYPE_1__ header_buffer; void* header; TYPE_4__* tfs_peer; } ;
typedef TYPE_3__ ngx_http_tfs_t ;
struct TYPE_8__ {int last; } ;
struct TYPE_10__ {TYPE_2__ body_buffer; } ;
typedef TYPE_4__ ngx_http_tfs_peer_connection_t ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_OK ;
 scalar_t__ stub1 (TYPE_3__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_process_header(ngx_http_tfs_t *t, ngx_int_t n)
{
    ngx_int_t body_size, rc;
    ngx_http_tfs_peer_connection_t *tp;

    tp = t->tfs_peer;

    if (n < t->header_size) {
        t->header_buffer.last += n;
        t->header_size -= n;
        return NGX_AGAIN;
    }

    t->header = (void *) t->header_buffer.pos;
    t->header_buffer.last += t->header_size;
    body_size = n - t->header_size;
    if (body_size > 0) {
        tp->body_buffer.last += body_size;
    }
    if (t->input_filter != ((void*)0)) {
        rc = t->input_filter(t);
        if (rc != NGX_OK) {

            return rc;
        }
    }

    return NGX_OK;
}
