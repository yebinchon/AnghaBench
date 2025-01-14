
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_30__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_13__ ;
typedef struct TYPE_31__ TYPE_10__ ;


typedef scalar_t__ ssize_t ;
typedef int ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_40__ {scalar_t__ status_n; int trailers; int headers; } ;
struct TYPE_38__ {scalar_t__ pos; scalar_t__ start; scalar_t__ last; scalar_t__ end; int temporary; int tag; } ;
struct TYPE_37__ {scalar_t__ cached; TYPE_10__* connection; } ;
struct TYPE_34__ {int tag; } ;
struct TYPE_41__ {scalar_t__ (* process_header ) (TYPE_9__*) ;TYPE_7__ headers_in; scalar_t__ start_time; TYPE_6__* state; TYPE_5__ buffer; TYPE_4__ peer; scalar_t__ valid_header_in; int read_timeout; TYPE_2__ output; TYPE_1__* conf; int request_sent; } ;
typedef TYPE_8__ ngx_http_upstream_t ;
struct TYPE_42__ {TYPE_3__* cache; int pool; } ;
typedef TYPE_9__ ngx_http_request_t ;
struct TYPE_31__ {scalar_t__ (* recv ) (TYPE_10__*,scalar_t__,scalar_t__) ;TYPE_13__* log; TYPE_30__* read; } ;
typedef TYPE_10__ ngx_connection_t ;
struct TYPE_39__ {scalar_t__ header_time; int bytes_received; } ;
struct TYPE_36__ {int header_start; } ;
struct TYPE_35__ {scalar_t__ timedout; } ;
struct TYPE_33__ {int buffer_size; } ;
struct TYPE_32__ {char* action; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_HTTP_UPSTREAM_FT_ERROR ;
 int NGX_HTTP_UPSTREAM_FT_INVALID_HEADER ;
 int NGX_HTTP_UPSTREAM_FT_TIMEOUT ;
 scalar_t__ NGX_HTTP_UPSTREAM_INVALID_HEADER ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (int ,int ) ;
 scalar_t__ ngx_current_msec ;
 scalar_t__ ngx_handle_read_event (TYPE_30__*,int ) ;
 int ngx_http_upstream_finalize_request (TYPE_9__*,TYPE_8__*,int ) ;
 scalar_t__ ngx_http_upstream_intercept_errors (TYPE_9__*,TYPE_8__*) ;
 int ngx_http_upstream_next (TYPE_9__*,TYPE_8__*,int ) ;
 scalar_t__ ngx_http_upstream_process_headers (TYPE_9__*,TYPE_8__*) ;
 int ngx_http_upstream_send_response (TYPE_9__*,TYPE_8__*) ;
 scalar_t__ ngx_http_upstream_test_connect (TYPE_10__*) ;
 scalar_t__ ngx_http_upstream_test_next (TYPE_9__*,TYPE_8__*) ;
 scalar_t__ ngx_list_init (int *,int ,int,int) ;
 int ngx_log_debug0 (int ,TYPE_13__*,int ,char*) ;
 int ngx_log_error (int ,TYPE_13__*,int ,char*) ;
 int * ngx_palloc (int ,int) ;
 int rev ;
 scalar_t__ stub1 (TYPE_10__*,scalar_t__,scalar_t__) ;
 scalar_t__ stub2 (TYPE_9__*) ;

__attribute__((used)) static void
ngx_http_upstream_process_header(ngx_http_request_t *r, ngx_http_upstream_t *u)
{
    ssize_t n;
    ngx_int_t rc;
    ngx_connection_t *c;

    c = u->peer.connection;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http upstream process header");

    c->log->action = "reading response header from upstream";

    if (c->read->timedout) {
        ngx_http_upstream_next(r, u, NGX_HTTP_UPSTREAM_FT_TIMEOUT);
        return;
    }

    if (!u->request_sent && ngx_http_upstream_test_connect(c) != NGX_OK) {
        ngx_http_upstream_next(r, u, NGX_HTTP_UPSTREAM_FT_ERROR);
        return;
    }

    if (u->buffer.start == ((void*)0)) {
        u->buffer.start = ngx_palloc(r->pool, u->conf->buffer_size);
        if (u->buffer.start == ((void*)0)) {
            ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        u->buffer.pos = u->buffer.start;
        u->buffer.last = u->buffer.start;
        u->buffer.end = u->buffer.start + u->conf->buffer_size;
        u->buffer.temporary = 1;

        u->buffer.tag = u->output.tag;

        if (ngx_list_init(&u->headers_in.headers, r->pool, 8,
                          sizeof(ngx_table_elt_t))
            != NGX_OK)
        {
            ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        if (ngx_list_init(&u->headers_in.trailers, r->pool, 2,
                          sizeof(ngx_table_elt_t))
            != NGX_OK)
        {
            ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }
    }

    for ( ;; ) {

        n = c->recv(c, u->buffer.last, u->buffer.end - u->buffer.last);

        if (n == NGX_AGAIN) {




            if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
                ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }

            return;
        }

        if (n == 0) {
            ngx_log_error(NGX_LOG_ERR, c->log, 0,
                          "upstream prematurely closed connection");
        }

        if (n == NGX_ERROR || n == 0) {
            ngx_http_upstream_next(r, u, NGX_HTTP_UPSTREAM_FT_ERROR);
            return;
        }

        u->state->bytes_received += n;

        u->buffer.last += n;







        rc = u->process_header(r);

        if (rc == NGX_AGAIN) {

            if (u->buffer.last == u->buffer.end) {
                ngx_log_error(NGX_LOG_ERR, c->log, 0,
                              "upstream sent too big header");

                ngx_http_upstream_next(r, u,
                                       NGX_HTTP_UPSTREAM_FT_INVALID_HEADER);
                return;
            }

            continue;
        }

        break;
    }

    if (rc == NGX_HTTP_UPSTREAM_INVALID_HEADER) {
        ngx_http_upstream_next(r, u, NGX_HTTP_UPSTREAM_FT_INVALID_HEADER);
        return;
    }

    if (rc == NGX_ERROR) {
        ngx_http_upstream_finalize_request(r, u,
                                           NGX_HTTP_INTERNAL_SERVER_ERROR);
        return;
    }



    u->state->header_time = ngx_current_msec - u->start_time;

    if (u->headers_in.status_n >= NGX_HTTP_SPECIAL_RESPONSE) {

        if (ngx_http_upstream_test_next(r, u) == NGX_OK) {
            return;
        }

        if (ngx_http_upstream_intercept_errors(r, u) == NGX_OK) {
            return;
        }
    }

    if (ngx_http_upstream_process_headers(r, u) != NGX_OK) {
        return;
    }

    ngx_http_upstream_send_response(r, u);
}
