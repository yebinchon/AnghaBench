
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ off_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_22__ {scalar_t__ content_length_n; } ;
struct TYPE_23__ {int lingering_close; int pool; TYPE_1__* connection; TYPE_2__ headers_in; int request_body_no_buffering; TYPE_4__* request_body; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_24__ {int rest; int busy; int free; TYPE_8__* chunked; } ;
typedef TYPE_4__ ngx_http_request_body_t ;
struct TYPE_25__ {scalar_t__ client_max_body_size; } ;
typedef TYPE_5__ ngx_http_core_loc_conf_t ;
typedef int ngx_http_chunked_t ;
struct TYPE_26__ {struct TYPE_26__* next; TYPE_7__* buf; } ;
typedef TYPE_6__ ngx_chain_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_27__ {int temporary; size_t start; size_t pos; size_t last; int last_buf; int flush; int end; scalar_t__ tag; scalar_t__ file_pos; scalar_t__ file_last; int in_file; } ;
typedef TYPE_7__ ngx_buf_t ;
struct TYPE_28__ {scalar_t__ size; int length; } ;
struct TYPE_21__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_BAD_REQUEST ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_REQUEST_ENTITY_TOO_LARGE ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 TYPE_6__* ngx_chain_get_free_buf (int ,int *) ;
 int ngx_chain_update_chains (int ,int *,int *,TYPE_6__**,scalar_t__) ;
 int ngx_http_core_module ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 scalar_t__ ngx_http_parse_chunked (TYPE_3__*,TYPE_7__*,TYPE_8__*) ;
 int ngx_http_read_client_request_body ;
 scalar_t__ ngx_http_top_request_body_filter (TYPE_3__*,TYPE_6__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug7 (int ,int ,int ,char*,int,int ,size_t,size_t,size_t,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_memzero (TYPE_7__*,int) ;
 TYPE_8__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_request_body_chunked_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    size_t size;
    ngx_int_t rc;
    ngx_buf_t *b;
    ngx_chain_t *cl, *out, *tl, **ll;
    ngx_http_request_body_t *rb;
    ngx_http_core_loc_conf_t *clcf;

    rb = r->request_body;

    if (rb->rest == -1) {

        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http request body chunked filter");

        rb->chunked = ngx_pcalloc(r->pool, sizeof(ngx_http_chunked_t));
        if (rb->chunked == ((void*)0)) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        r->headers_in.content_length_n = 0;
        rb->rest = 3;
    }

    out = ((void*)0);
    ll = &out;

    for (cl = in; cl; cl = cl->next) {

        for ( ;; ) {

            ngx_log_debug7(NGX_LOG_DEBUG_EVENT, r->connection->log, 0,
                           "http body chunked buf "
                           "t:%d f:%d %p, pos %p, size: %z file: %O, size: %O",
                           cl->buf->temporary, cl->buf->in_file,
                           cl->buf->start, cl->buf->pos,
                           cl->buf->last - cl->buf->pos,
                           cl->buf->file_pos,
                           cl->buf->file_last - cl->buf->file_pos);

            rc = ngx_http_parse_chunked(r, cl->buf, rb->chunked);

            if (rc == NGX_OK) {



                clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

                if (clcf->client_max_body_size
                    && clcf->client_max_body_size
                       - r->headers_in.content_length_n < rb->chunked->size)
                {
                    ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                  "client intended to send too large chunked "
                                  "body: %O+%O bytes",
                                  r->headers_in.content_length_n,
                                  rb->chunked->size);

                    r->lingering_close = 1;

                    return NGX_HTTP_REQUEST_ENTITY_TOO_LARGE;
                }

                tl = ngx_chain_get_free_buf(r->pool, &rb->free);
                if (tl == ((void*)0)) {
                    return NGX_HTTP_INTERNAL_SERVER_ERROR;
                }

                b = tl->buf;

                ngx_memzero(b, sizeof(ngx_buf_t));

                b->temporary = 1;
                b->tag = (ngx_buf_tag_t) &ngx_http_read_client_request_body;
                b->start = cl->buf->pos;
                b->pos = cl->buf->pos;
                b->last = cl->buf->last;
                b->end = cl->buf->end;
                b->flush = r->request_body_no_buffering;

                *ll = tl;
                ll = &tl->next;

                size = cl->buf->last - cl->buf->pos;

                if ((off_t) size > rb->chunked->size) {
                    cl->buf->pos += (size_t) rb->chunked->size;
                    r->headers_in.content_length_n += rb->chunked->size;
                    rb->chunked->size = 0;

                } else {
                    rb->chunked->size -= size;
                    r->headers_in.content_length_n += size;
                    cl->buf->pos = cl->buf->last;
                }

                b->last = cl->buf->pos;

                continue;
            }

            if (rc == NGX_DONE) {



                rb->rest = 0;

                tl = ngx_chain_get_free_buf(r->pool, &rb->free);
                if (tl == ((void*)0)) {
                    return NGX_HTTP_INTERNAL_SERVER_ERROR;
                }

                b = tl->buf;

                ngx_memzero(b, sizeof(ngx_buf_t));

                b->last_buf = 1;

                *ll = tl;
                ll = &tl->next;

                break;
            }

            if (rc == NGX_AGAIN) {



                rb->rest = rb->chunked->length;

                break;
            }



            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "client sent invalid chunked body");

            return NGX_HTTP_BAD_REQUEST;
        }
    }

    rc = ngx_http_top_request_body_filter(r, out);

    ngx_chain_update_chains(r->pool, &rb->free, &rb->busy, &out,
                            (ngx_buf_tag_t) &ngx_http_read_client_request_body);

    return rc;
}
