
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_14__ {int pool; TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {int buffer; TYPE_6__* buf_in; TYPE_1__* conf; } ;
typedef TYPE_4__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_16__ {int free_recv_bufs; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_17__ {int * buf; struct TYPE_17__* next; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_13__ {int log; } ;
struct TYPE_12__ {int buffer_size; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_6__* ngx_http_lua_chain_get_free_buf (int ,int ,int *,int ) ;
 int ngx_http_lua_module ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_socket_add_input_buffer(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u)
{
    ngx_chain_t *cl;
    ngx_http_lua_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    cl = ngx_http_lua_chain_get_free_buf(r->connection->log, r->pool,
                                         &ctx->free_recv_bufs,
                                         u->conf->buffer_size);

    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    u->buf_in->next = cl;
    u->buf_in = cl;
    u->buffer = *cl->buf;

    return NGX_OK;
}
