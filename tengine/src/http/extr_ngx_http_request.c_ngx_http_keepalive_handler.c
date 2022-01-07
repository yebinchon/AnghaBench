
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_17__ {int (* handler ) (TYPE_2__*) ;int kq_errno; scalar_t__ pending_eof; scalar_t__ timedout; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_18__ {scalar_t__ (* recv ) (TYPE_3__*,int *,size_t) ;scalar_t__ received; scalar_t__ destroyed; scalar_t__ sent; int * data; scalar_t__ idle; TYPE_8__* log; int addr_text; int pool; scalar_t__ async_enable; int log_error; TYPE_4__* buffer; TYPE_1__* ssl; scalar_t__ close; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_19__ {int * last; int * pos; int * start; int * end; } ;
typedef TYPE_4__ ngx_buf_t ;
struct TYPE_20__ {char* action; int * handler; } ;
struct TYPE_16__ {int no_send_shutdown; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_ERROR_IGNORE_ECONNRESET ;
 int NGX_ERROR_INFO ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_USE_KQUEUE_EVENT ;
 int ngx_del_timer (TYPE_2__*) ;
 int ngx_event_flags ;
 scalar_t__ ngx_handle_read_event (TYPE_2__*,int ) ;
 int ngx_http_close_connection (TYPE_3__*) ;
 int * ngx_http_create_request (TYPE_3__*) ;
 int * ngx_http_log_error ;
 int ngx_http_process_request_line (TYPE_2__*) ;
 int ngx_log_debug0 (int ,TYPE_8__*,int ,char*) ;
 int ngx_log_error (int ,TYPE_8__*,int ,char*,int *) ;
 int * ngx_palloc (int ,size_t) ;
 scalar_t__ ngx_pfree (int ,int *) ;
 int ngx_reusable_connection (TYPE_3__*,int ) ;
 int ngx_set_socket_errno (int ) ;
 int ngx_socket_errno ;
 int ngx_ssl_waiting_for_async (TYPE_3__*) ;
 scalar_t__ stub1 (TYPE_3__*,int *,size_t) ;

__attribute__((used)) static void
ngx_http_keepalive_handler(ngx_event_t *rev)
{
    size_t size;
    ssize_t n;
    ngx_buf_t *b;
    ngx_connection_t *c;

    c = rev->data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0, "http keepalive handler");

    if (rev->timedout || c->close) {
        ngx_http_close_connection(c);
        return;
    }
    b = c->buffer;
    size = b->end - b->start;

    if (b->pos == ((void*)0)) {







        b->pos = ngx_palloc(c->pool, size);
        if (b->pos == ((void*)0)) {
            ngx_http_close_connection(c);
            return;
        }

        b->start = b->pos;
        b->last = b->pos;
        b->end = b->pos + size;
    }






    c->log_error = NGX_ERROR_IGNORE_ECONNRESET;
    ngx_set_socket_errno(0);

    n = c->recv(c, b->last, size);
    c->log_error = NGX_ERROR_INFO;

    if (n == NGX_AGAIN) {
        if (ngx_handle_read_event(rev, 0) != NGX_OK) {
            ngx_http_close_connection(c);
            return;
        }
        if (ngx_pfree(c->pool, b->start) == NGX_OK) {





            b->pos = ((void*)0);
        }




        return;
    }

    if (n == NGX_ERROR) {
        ngx_http_close_connection(c);
        return;
    }

    c->log->handler = ((void*)0);

    if (n == 0) {
        ngx_log_error(NGX_LOG_INFO, c->log, ngx_socket_errno,
                      "client %V closed keepalive connection", &c->addr_text);
        ngx_http_close_connection(c);
        return;
    }

    b->last += n;

    c->log->handler = ngx_http_log_error;
    c->log->action = "reading client request line";

    c->idle = 0;
    ngx_reusable_connection(c, 0);

    c->data = ngx_http_create_request(c);
    if (c->data == ((void*)0)) {
        ngx_http_close_connection(c);
        return;
    }

    c->sent = 0;
    c->destroyed = 0;




    ngx_del_timer(rev);

    rev->handler = ngx_http_process_request_line;
    ngx_http_process_request_line(rev);
}
