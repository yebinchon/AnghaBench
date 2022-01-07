
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


typedef int u_char ;
typedef int * off_t ;
typedef int ngx_queue_t ;
struct TYPE_11__ {int cached; TYPE_5__* connection; int log; int socklen; scalar_t__ sockaddr; } ;
typedef TYPE_3__ ngx_peer_connection_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {int queue; int index; int socklen; int sockaddr; TYPE_5__* connection; } ;
typedef TYPE_4__ ngx_http_upstream_keepalive_cache_t ;
struct TYPE_13__ {TYPE_8__* read; TYPE_2__* pool; TYPE_1__* write; int log; scalar_t__ idle; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_14__ {scalar_t__ timer_set; int log; } ;
struct TYPE_10__ {int log; } ;
struct TYPE_9__ {int log; } ;


 int NGX_DONE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_del_timer (TYPE_8__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_5__*) ;
 scalar_t__ ngx_memn2cmp (int *,int *,int ,int ) ;
 int * ngx_queue_head (int *) ;
 int ngx_queue_insert_head (int *,int *) ;
 int * ngx_queue_next (int *) ;
 int ngx_queue_remove (int *) ;
 int * ngx_queue_sentinel (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_do_get_keepalive_peer(ngx_peer_connection_t *pc,
    ngx_queue_t *cache, ngx_queue_t *free, off_t offset)
{
    ngx_queue_t *q;
    ngx_connection_t *c;

    ngx_http_upstream_keepalive_cache_t *item;

    for (q = ngx_queue_head(cache);
         q != ngx_queue_sentinel(cache);
         q = ngx_queue_next(q))
    {
        item = (ngx_http_upstream_keepalive_cache_t *) ((u_char *) q - offset);
        c = item->connection;

        if (ngx_memn2cmp((u_char *) &item->sockaddr, (u_char *) pc->sockaddr,
                         item->socklen, pc->socklen)
            == 0)
        {
            ngx_queue_remove(&item->index);
            ngx_queue_remove(&item->queue);
            ngx_queue_insert_head(free, &item->queue);

            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                           "get keepalive peer: using connection %p", c);

            c->idle = 0;
            c->log = pc->log;
            c->read->log = pc->log;
            c->write->log = pc->log;
            c->pool->log = pc->log;

            if (c->read->timer_set) {
                ngx_del_timer(c->read);
            }

            pc->connection = c;
            pc->cached = 1;

            return NGX_DONE;
        }
    }

    return NGX_OK;
}
