
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_9__ {scalar_t__ pos; scalar_t__ last; scalar_t__ start; } ;
struct TYPE_10__ {TYPE_1__ buffer; TYPE_4__* buf_in; TYPE_4__* bufs_in; } ;
typedef TYPE_2__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_11__ {TYPE_4__* free_recv_bufs; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_12__ {TYPE_5__* buf; struct TYPE_12__* next; } ;
typedef TYPE_4__ ngx_chain_t ;
struct TYPE_13__ {size_t last; size_t pos; } ;
typedef TYPE_5__ ngx_buf_t ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 int NGX_OK ;
 int dd (char*,...) ;
 int luaL_addlstring (int *,char*,size_t) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;
 scalar_t__ lua_tostring (int *,int) ;
 int ngx_http_lua_probe_socket_tcp_receive_done (int *,TYPE_2__*,int *,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_socket_push_input_data(ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx, ngx_http_lua_socket_tcp_upstream_t *u,
    lua_State *L)
{
    ngx_chain_t *cl;
    ngx_chain_t **ll;



    size_t chunk_size;
    ngx_buf_t *b;
    size_t nbufs;
    luaL_Buffer luabuf;

    dd("bufs_in: %p, buf_in: %p", u->bufs_in, u->buf_in);

    nbufs = 0;
    ll = ((void*)0);

    luaL_buffinit(L, &luabuf);

    for (cl = u->bufs_in; cl; cl = cl->next) {
        b = cl->buf;
        chunk_size = b->last - b->pos;

        dd("copying input data chunk from %p: \"%.*s\"", cl,
           (int) chunk_size, b->pos);

        luaL_addlstring(&luabuf, (char *) b->pos, chunk_size);

        if (cl->next) {
            ll = &cl->next;
        }





        nbufs++;
    }

    luaL_pushresult(&luabuf);
    if (nbufs > 1 && ll) {
        dd("recycle buffers: %d", (int) (nbufs - 1));

        *ll = ctx->free_recv_bufs;
        ctx->free_recv_bufs = u->bufs_in;
        u->bufs_in = u->buf_in;
    }

    if (u->buffer.pos == u->buffer.last) {
        dd("resetting u->buffer pos & last");
        u->buffer.pos = u->buffer.start;
        u->buffer.last = u->buffer.start;
    }

    if (u->bufs_in) {
        u->buf_in->buf->last = u->buffer.pos;
        u->buf_in->buf->pos = u->buffer.pos;
    }

    return NGX_OK;
}
