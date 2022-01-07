
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef scalar_t__ off_t ;
typedef int ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_22__ {int pos; int last; int start; } ;
struct TYPE_20__ {int * busy; int * in; TYPE_3__* buf; TYPE_14__* free; } ;
struct TYPE_15__ {int content_length_n; int last_modified_time; int trailers; int headers; } ;
struct TYPE_23__ {scalar_t__ (* reinit_request ) (TYPE_8__*) ;TYPE_6__ buffer; TYPE_4__ output; TYPE_9__* request_bufs; TYPE_11__ headers_in; scalar_t__ upgrade; scalar_t__ keepalive; } ;
typedef TYPE_7__ ngx_http_upstream_t ;
typedef int ngx_http_upstream_headers_in_t ;
struct TYPE_24__ {TYPE_5__* cache; int pool; struct TYPE_24__* main; TYPE_2__* request_body; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_25__ {TYPE_1__* buf; struct TYPE_25__* next; } ;
typedef TYPE_9__ ngx_chain_t ;
struct TYPE_21__ {scalar_t__ header_start; } ;
struct TYPE_19__ {int start; int last; int pos; } ;
struct TYPE_18__ {scalar_t__ temp_file; } ;
struct TYPE_17__ {scalar_t__ file_last; scalar_t__ file_pos; scalar_t__ in_file; int start; int pos; } ;
struct TYPE_16__ {int * next; TYPE_3__* buf; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 TYPE_14__* ngx_alloc_chain_link (int ) ;
 scalar_t__ ngx_list_init (int *,int ,int,int) ;
 int ngx_memzero (TYPE_11__*,int) ;
 scalar_t__ stub1 (TYPE_8__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_reinit(ngx_http_request_t *r, ngx_http_upstream_t *u)
{
    off_t file_pos;
    ngx_chain_t *cl;

    if (u->reinit_request(r) != NGX_OK) {
        return NGX_ERROR;
    }

    u->keepalive = 0;
    u->upgrade = 0;

    ngx_memzero(&u->headers_in, sizeof(ngx_http_upstream_headers_in_t));
    u->headers_in.content_length_n = -1;
    u->headers_in.last_modified_time = -1;

    if (ngx_list_init(&u->headers_in.headers, r->pool, 8,
                      sizeof(ngx_table_elt_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_list_init(&u->headers_in.trailers, r->pool, 2,
                      sizeof(ngx_table_elt_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }



    file_pos = 0;

    for (cl = u->request_bufs; cl; cl = cl->next) {
        cl->buf->pos = cl->buf->start;



        if (cl->buf->in_file) {
            cl->buf->file_pos = file_pos;
            file_pos = cl->buf->file_last;
        }
    }



    if (r->request_body && r->request_body->temp_file
        && r != r->main && u->output.buf)
    {
        u->output.free = ngx_alloc_chain_link(r->pool);
        if (u->output.free == ((void*)0)) {
            return NGX_ERROR;
        }

        u->output.free->buf = u->output.buf;
        u->output.free->next = ((void*)0);

        u->output.buf->pos = u->output.buf->start;
        u->output.buf->last = u->output.buf->start;
    }

    u->output.buf = ((void*)0);
    u->output.in = ((void*)0);
    u->output.busy = ((void*)0);



    u->buffer.pos = u->buffer.start;
    u->buffer.last = u->buffer.pos;

    return NGX_OK;
}
