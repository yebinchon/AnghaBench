
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_17__ {TYPE_3__* connection; struct TYPE_17__* main; scalar_t__ header_only; int pool; TYPE_5__* cache; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_14__ {int data; } ;
struct TYPE_15__ {TYPE_1__ name; int fd; } ;
struct TYPE_18__ {scalar_t__ length; scalar_t__ body_start; TYPE_2__ file; } ;
typedef TYPE_5__ ngx_http_cache_t ;
typedef int ngx_file_t ;
struct TYPE_19__ {int * next; TYPE_7__* buf; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_20__ {scalar_t__ file_pos; scalar_t__ file_last; int in_file; int last_buf; int last_in_chain; TYPE_8__* file; } ;
typedef TYPE_7__ ngx_buf_t ;
struct TYPE_21__ {int log; TYPE_1__ name; int fd; } ;
struct TYPE_16__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_7__* ngx_calloc_buf (int ) ;
 scalar_t__ ngx_http_output_filter (TYPE_4__*,TYPE_6__*) ;
 scalar_t__ ngx_http_send_header (TYPE_4__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 TYPE_8__* ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_http_cache_send(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_buf_t *b;
    ngx_chain_t out;
    ngx_http_cache_t *c;

    c = r->cache;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http file cache send: %s", c->file.name.data);

    if (r != r->main && c->length - c->body_start == 0) {
        return ngx_http_send_header(r);
    }



    b = ngx_calloc_buf(r->pool);
    if (b == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    b->file = ngx_pcalloc(r->pool, sizeof(ngx_file_t));
    if (b->file == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    rc = ngx_http_send_header(r);

    if (rc == NGX_ERROR || rc > NGX_OK || r->header_only) {
        return rc;
    }

    b->file_pos = c->body_start;
    b->file_last = c->length;

    b->in_file = (c->length - c->body_start) ? 1: 0;
    b->last_buf = (r == r->main) ? 1: 0;
    b->last_in_chain = 1;

    b->file->fd = c->file.fd;
    b->file->name = c->file.name;
    b->file->log = r->connection->log;

    out.buf = b;
    out.next = ((void*)0);

    return ngx_http_output_filter(r, &out);
}
