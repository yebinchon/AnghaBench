
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {int content_length_n; scalar_t__ chunked; } ;
struct TYPE_16__ {int request_body_in_file_only; scalar_t__ request_body_no_buffering; int read_event_handler; TYPE_1__ headers_in; TYPE_3__* request_body; TYPE_5__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_17__ {int (* post_handler ) (TYPE_2__*) ;int received; TYPE_6__* buf; scalar_t__ rest; } ;
typedef TYPE_3__ ngx_http_request_body_t ;
struct TYPE_18__ {int client_body_timeout; } ;
typedef TYPE_4__ ngx_http_core_loc_conf_t ;
struct TYPE_19__ {TYPE_8__* read; int log; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_20__ {scalar_t__ sync; int * last; int * end; int * start; int * pos; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_21__ {scalar_t__ timer_set; } ;


 scalar_t__ NGX_HTTP_BAD_REQUEST ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_8__*,int ) ;
 int * ngx_cpymem (int *,int *,size_t) ;
 int ngx_del_timer (TYPE_8__*) ;
 int ngx_http_block_reading ;
 int ngx_http_core_module ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 scalar_t__ ngx_http_v2_filter_request_body (TYPE_2__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_post_event (TYPE_8__*,int *) ;
 int ngx_posted_events ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_process_request_body(ngx_http_request_t *r, u_char *pos,
    size_t size, ngx_uint_t last)
{
    ngx_buf_t *buf;
    ngx_int_t rc;
    ngx_connection_t *fc;
    ngx_http_request_body_t *rb;
    ngx_http_core_loc_conf_t *clcf;

    fc = r->connection;
    rb = r->request_body;
    buf = rb->buf;

    if (size) {
        if (buf->sync) {
            buf->pos = buf->start = pos;
            buf->last = buf->end = pos + size;

            r->request_body_in_file_only = 1;

        } else {
            if (size > (size_t) (buf->end - buf->last)) {
                ngx_log_error(NGX_LOG_INFO, fc->log, 0,
                              "client intended to send body data "
                              "larger than declared");

                return NGX_HTTP_BAD_REQUEST;
            }

            buf->last = ngx_cpymem(buf->last, pos, size);
        }
    }

    if (last) {
        rb->rest = 0;

        if (fc->read->timer_set) {
            ngx_del_timer(fc->read);
        }

        if (r->request_body_no_buffering) {
            ngx_post_event(fc->read, &ngx_posted_events);
            return NGX_OK;
        }

        rc = ngx_http_v2_filter_request_body(r);

        if (rc != NGX_OK) {
            return rc;
        }

        if (buf->sync) {

            rb->buf = ((void*)0);
        }

        if (r->headers_in.chunked) {
            r->headers_in.content_length_n = rb->received;
        }

        r->read_event_handler = ngx_http_block_reading;
        rb->post_handler(r);

        return NGX_OK;
    }

    if (size == 0) {
        return NGX_OK;
    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);
    ngx_add_timer(fc->read, clcf->client_body_timeout);

    if (r->request_body_no_buffering) {
        ngx_post_event(fc->read, &ngx_posted_events);
        return NGX_OK;
    }

    if (buf->sync) {
        return ngx_http_v2_filter_request_body(r);
    }

    return NGX_OK;
}
