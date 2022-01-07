
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int free; } ;
typedef TYPE_2__ ngx_http_upstream_keepalive_srv_conf_t ;
struct TYPE_11__ {TYPE_1__* node; int queue; int index; TYPE_2__* conf; } ;
typedef TYPE_3__ ngx_http_upstream_keepalive_cache_t ;
struct TYPE_12__ {int log; TYPE_5__* data; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_13__ {TYPE_3__* data; TYPE_8__* read; int fd; scalar_t__ close; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_14__ {scalar_t__ timedout; } ;
struct TYPE_9__ {int count; } ;


 int MSG_PEEK ;
 scalar_t__ NGX_EAGAIN ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_handle_read_event (TYPE_8__*,int ) ;
 int ngx_http_upstream_keepalive_close (TYPE_5__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_queue_insert_head (int *,int *) ;
 int ngx_queue_remove (int *) ;
 scalar_t__ ngx_socket_errno ;
 int recv (int ,char*,int,int ) ;

__attribute__((used)) static void
ngx_http_upstream_keepalive_close_handler(ngx_event_t *ev)
{
    ngx_http_upstream_keepalive_srv_conf_t *conf;
    ngx_http_upstream_keepalive_cache_t *item;

    int n;
    char buf[1];
    ngx_connection_t *c;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "keepalive close handler");

    c = ev->data;

    if (c->close) {
        goto close;
    }

    if (c->read->timedout) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                       "keepalive max idle timeout");
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
    conf = item->conf;

    ngx_http_upstream_keepalive_close(c);

    ngx_queue_remove(&item->queue);
    ngx_queue_remove(&item->index);
    ngx_queue_insert_head(&conf->free, &item->queue);

    if (item->node) {
        item->node->count--;
    }
}
