
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr_text; int socklen; int sockaddr; TYPE_2__* connection; } ;
typedef TYPE_1__ ngx_http_realip_ctx_t ;
struct TYPE_4__ {int addr_text; int socklen; int sockaddr; } ;
typedef TYPE_2__ ngx_connection_t ;



__attribute__((used)) static void
ngx_http_realip_cleanup(void *data)
{
    ngx_http_realip_ctx_t *ctx = data;

    ngx_connection_t *c;

    c = ctx->connection;

    c->sockaddr = ctx->sockaddr;
    c->socklen = ctx->socklen;
    c->addr_text = ctx->addr_text;
}
