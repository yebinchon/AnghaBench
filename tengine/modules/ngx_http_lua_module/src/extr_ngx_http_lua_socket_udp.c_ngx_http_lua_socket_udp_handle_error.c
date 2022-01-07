
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_14__ {int (* write_event_handler ) (TYPE_2__*) ;TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_15__ {scalar_t__ waiting; TYPE_5__* co_ctx; int read_event_handler; int ft_type; } ;
typedef TYPE_3__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_16__ {TYPE_5__* cur_co_ctx; int resume_handler; } ;
typedef TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_17__ {int * cleanup; } ;
typedef TYPE_5__ ngx_http_lua_co_ctx_t ;
struct TYPE_13__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_socket_dummy_handler ;
 int ngx_http_lua_socket_udp_finalize (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_lua_socket_udp_resume ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
ngx_http_lua_socket_udp_handle_error(ngx_http_request_t *r,
    ngx_http_lua_socket_udp_upstream_t *u, ngx_uint_t ft_type)
{
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp socket handle error");

    u->ft_type |= ft_type;





    u->read_event_handler = ngx_http_lua_socket_dummy_handler;

    coctx = u->co_ctx;

    if (coctx) {
        coctx->cleanup = ((void*)0);
    }

    if (u->waiting) {
        u->waiting = 0;

        ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
        if (ctx == ((void*)0)) {
            return;
        }

        ctx->resume_handler = ngx_http_lua_socket_udp_resume;
        ctx->cur_co_ctx = coctx;

        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua udp socket waking up the current request");

        r->write_event_handler(r);
    }
}
