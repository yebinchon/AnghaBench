
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int queue; int free; } ;
typedef TYPE_1__ ngx_http_connection_pool_elt_t ;
struct TYPE_7__ {int log; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_8__ {TYPE_1__* data; int read; int fd; scalar_t__ close; } ;
typedef TYPE_3__ ngx_connection_t ;


 int MSG_PEEK ;
 scalar_t__ NGX_EAGAIN ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_handle_read_event (int ,int ) ;
 int ngx_http_connection_pool_close (TYPE_3__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_queue_insert_head (int ,int *) ;
 int ngx_queue_remove (int *) ;
 scalar_t__ ngx_socket_errno ;
 int recv (int ,char*,int,int ) ;

__attribute__((used)) static void
ngx_http_connection_pool_close_handler(ngx_event_t *ev)
{
    ngx_http_connection_pool_elt_t *item;

    int n;
    char buf[1];
    ngx_connection_t *c;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ev->log, 0, "keepalive close handler");

    c = ev->data;

    if (c->close) {
        goto close;
    }

    n = recv(c->fd, buf, 1, MSG_PEEK);

    if (n == -1 && ngx_socket_errno == NGX_EAGAIN) {


        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            goto close;
        }

        return;
    }

close:

    item = c->data;


    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "connection pool close connection");

    ngx_http_connection_pool_close(c);

    ngx_queue_remove(&item->queue);
    ngx_queue_insert_head(item->free, &item->queue);
}
