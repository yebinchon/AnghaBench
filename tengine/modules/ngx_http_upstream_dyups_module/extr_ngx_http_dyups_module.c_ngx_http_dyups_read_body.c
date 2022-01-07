
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int pool; TYPE_2__* request_body; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_14__ {TYPE_3__* next; TYPE_6__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_15__ {size_t last; size_t pos; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_12__ {TYPE_6__* buf; } ;
struct TYPE_11__ {TYPE_5__* bufs; } ;
struct TYPE_10__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 void* ngx_cpymem (size_t,size_t,size_t) ;
 TYPE_6__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_buf_t *
ngx_http_dyups_read_body(ngx_http_request_t *r)
{
    size_t len;
    ngx_buf_t *buf, *next, *body;
    ngx_chain_t *cl;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "[dyups] interface read post body");

    cl = r->request_body->bufs;
    buf = cl->buf;

    if (cl->next == ((void*)0)) {

        return buf;

    } else {

        next = cl->next->buf;
        len = (buf->last - buf->pos) + (next->last - next->pos);

        body = ngx_create_temp_buf(r->pool, len);
        if (body == ((void*)0)) {
            return ((void*)0);
        }

        body->last = ngx_cpymem(body->last, buf->pos, buf->last - buf->pos);
        body->last = ngx_cpymem(body->last, next->pos, next->last - next->pos);
    }

    return body;
}
