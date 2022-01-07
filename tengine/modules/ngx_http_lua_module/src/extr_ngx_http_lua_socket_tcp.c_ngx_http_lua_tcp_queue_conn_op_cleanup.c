
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_6__* socket_pool; } ;
typedef TYPE_1__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_14__ {scalar_t__ timer_set; scalar_t__ posted; } ;
struct TYPE_11__ {int queue; TYPE_7__ event; TYPE_1__* u; } ;
typedef TYPE_2__ ngx_http_lua_socket_tcp_conn_op_ctx_t ;
struct TYPE_12__ {TYPE_2__* data; } ;
typedef TYPE_3__ ngx_http_lua_co_ctx_t ;
struct TYPE_15__ {int log; } ;
struct TYPE_13__ {int connections; int cache_connect_op; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_9__* ngx_cycle ;
 int ngx_del_timer (TYPE_7__*) ;
 int ngx_delete_posted_event (TYPE_7__*) ;
 int ngx_http_lua_socket_tcp_resume_conn_op (TYPE_6__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_2__*,TYPE_1__*) ;
 int ngx_queue_insert_head (int *,int *) ;
 int ngx_queue_remove (int *) ;

__attribute__((used)) static void
ngx_http_lua_tcp_queue_conn_op_cleanup(void *data)
{
    ngx_http_lua_co_ctx_t *coctx = data;
    ngx_http_lua_socket_tcp_upstream_t *u;
    ngx_http_lua_socket_tcp_conn_op_ctx_t *conn_op_ctx;

    conn_op_ctx = coctx->data;
    u = conn_op_ctx->u;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "lua tcp socket abort queueing, conn_op_ctx: %p, u: %p",
                   conn_op_ctx, u);

    if (conn_op_ctx->event.posted) {
        ngx_delete_posted_event(&conn_op_ctx->event);

    } else if (conn_op_ctx->event.timer_set) {
        ngx_del_timer(&conn_op_ctx->event);
    }

    ngx_queue_remove(&conn_op_ctx->queue);
    ngx_queue_insert_head(&u->socket_pool->cache_connect_op,
                          &conn_op_ctx->queue);

    u->socket_pool->connections--;
    ngx_http_lua_socket_tcp_resume_conn_op(u->socket_pool);
}
