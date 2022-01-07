
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_15__ {int (* write_event_handler ) (TYPE_2__*) ;TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_5__* write_co_ctx; scalar_t__ write_waiting; int write_event_handler; int ft_type; } ;
typedef TYPE_3__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_17__ {TYPE_5__* cur_co_ctx; int resume_handler; } ;
typedef TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {scalar_t__ co_ref; int * cleanup; } ;
typedef TYPE_5__ ngx_http_lua_co_ctx_t ;
struct TYPE_14__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_assert (int ) ;
 int ngx_http_lua_is_thread (TYPE_4__*) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_socket_dummy_handler ;
 int ngx_http_lua_socket_tcp_finalize (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_lua_socket_tcp_write_resume ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
ngx_http_lua_socket_handle_write_error(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, ngx_uint_t ft_type)
{
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket handle write error");

    u->ft_type |= ft_type;





    u->write_event_handler = ngx_http_lua_socket_dummy_handler;

    if (u->write_waiting) {
        u->write_waiting = 0;

        coctx = u->write_co_ctx;
        coctx->cleanup = ((void*)0);
        u->write_co_ctx = ((void*)0);

        ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

        ctx->resume_handler = ngx_http_lua_socket_tcp_write_resume;
        ctx->cur_co_ctx = coctx;

        ngx_http_lua_assert(coctx && (!ngx_http_lua_is_thread(ctx)
                            || coctx->co_ref >= 0));

        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua tcp socket waking up the current request");

        r->write_event_handler(r);
    }
}
