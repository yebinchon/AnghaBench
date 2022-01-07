
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {scalar_t__ connections; int free; } ;
typedef TYPE_1__ ngx_http_lua_socket_pool_t ;
struct TYPE_11__ {int queue; TYPE_1__* socket_pool; } ;
typedef TYPE_2__ ngx_http_lua_socket_pool_item_t ;
struct TYPE_12__ {int log; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_13__ {TYPE_2__* data; int fd; TYPE_9__* read; scalar_t__ close; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_14__ {scalar_t__ ready; scalar_t__ timedout; } ;


 int MSG_PEEK ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_EAGAIN ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int dd (char*,unsigned int) ;
 scalar_t__ ngx_handle_read_event (TYPE_9__*,int ) ;
 int ngx_http_lua_socket_free_pool (int ,TYPE_1__*) ;
 int ngx_http_lua_socket_tcp_close_connection (TYPE_4__*) ;
 int ngx_http_lua_socket_tcp_resume_conn_op (TYPE_1__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_queue_insert_head (int *,int *) ;
 int ngx_queue_remove (int *) ;
 scalar_t__ ngx_socket_errno ;
 int recv (int ,char*,int,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_socket_keepalive_close_handler(ngx_event_t *ev)
{
    ngx_http_lua_socket_pool_item_t *item;
    ngx_http_lua_socket_pool_t *spool;

    int n;
    char buf[1];
    ngx_connection_t *c;

    c = ev->data;

    if (c->close) {
        goto close;
    }

    if (c->read->timedout) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                       "lua tcp socket keepalive max idle timeout");

        goto close;
    }

    dd("read event ready: %d", (int) c->read->ready);

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "lua tcp socket keepalive close handler check stale events");

    n = recv(c->fd, buf, 1, MSG_PEEK);

    if (n == -1 && ngx_socket_errno == NGX_EAGAIN) {


        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            goto close;
        }

        return NGX_OK;
    }

close:

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "lua tcp socket keepalive close handler: fd:%d", c->fd);

    item = c->data;
    spool = item->socket_pool;

    ngx_http_lua_socket_tcp_close_connection(c);

    ngx_queue_remove(&item->queue);
    ngx_queue_insert_head(&spool->free, &item->queue);
    spool->connections--;

    dd("keepalive: connections: %u", (unsigned) spool->connections);

    if (spool->connections == 0) {
        ngx_http_lua_socket_free_pool(ev->log, spool);

    } else {
        ngx_http_lua_socket_tcp_resume_conn_op(spool);
    }

    return NGX_DECLINED;
}
