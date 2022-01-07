
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_12__ {TYPE_4__* connection; } ;
typedef TYPE_2__ ngx_stream_session_t ;
struct TYPE_11__ {size_t len; int * data; } ;
struct TYPE_13__ {TYPE_1__ addr_text; int socklen; int sockaddr; } ;
typedef TYPE_3__ ngx_stream_realip_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_14__ {TYPE_1__ addr_text; int socklen; int sockaddr; int pool; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_15__ {int socklen; int sockaddr; } ;
typedef TYPE_5__ ngx_addr_t ;


 int NGX_DECLINED ;
 int NGX_ERROR ;
 int NGX_SOCKADDR_STRLEN ;
 int ngx_memcpy (int *,int *,size_t) ;
 TYPE_3__* ngx_palloc (int ,int) ;
 int * ngx_pnalloc (int ,size_t) ;
 size_t ngx_sock_ntop (int ,int ,int *,int,int ) ;
 int ngx_stream_realip_module ;
 int ngx_stream_set_ctx (TYPE_2__*,TYPE_3__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_stream_realip_set_addr(ngx_stream_session_t *s, ngx_addr_t *addr)
{
    size_t len;
    u_char *p;
    u_char text[NGX_SOCKADDR_STRLEN];
    ngx_connection_t *c;
    ngx_stream_realip_ctx_t *ctx;

    c = s->connection;

    ctx = ngx_palloc(c->pool, sizeof(ngx_stream_realip_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    len = ngx_sock_ntop(addr->sockaddr, addr->socklen, text,
                        NGX_SOCKADDR_STRLEN, 0);
    if (len == 0) {
        return NGX_ERROR;
    }

    p = ngx_pnalloc(c->pool, len);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(p, text, len);

    ngx_stream_set_ctx(s, ctx, ngx_stream_realip_module);

    ctx->sockaddr = c->sockaddr;
    ctx->socklen = c->socklen;
    ctx->addr_text = c->addr_text;

    c->sockaddr = addr->sockaddr;
    c->socklen = addr->socklen;
    c->addr_text.len = len;
    c->addr_text.data = p;

    return NGX_DECLINED;
}
