
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int socklen; TYPE_4__* sockaddr; int log; TYPE_3__* connection; } ;
typedef TYPE_2__ ngx_peer_connection_t ;
struct TYPE_6__ {int * data; int len; } ;
struct TYPE_8__ {TYPE_1__ addr_text; int pool; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_9__ {int sa_family; } ;





 size_t NGX_INET6_ADDRSTRLEN ;
 size_t NGX_INET_ADDRSTRLEN ;
 int NGX_LOG_ERR ;
 size_t NGX_SOCKADDR_STRLEN ;
 size_t NGX_UNIX_ADDRSTRLEN ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int * ngx_pnalloc (int ,size_t) ;
 int ngx_sock_ntop (TYPE_4__*,int ,int *,size_t,int ) ;

__attribute__((used)) static void
ngx_http_lua_socket_init_peer_connection_addr_text(ngx_peer_connection_t *pc)
{
    ngx_connection_t *c;
    size_t addr_text_max_len;

    c = pc->connection;

    switch (pc->sockaddr->sa_family) {
    case 130:
        addr_text_max_len = NGX_INET_ADDRSTRLEN;
        break;

    default:
        addr_text_max_len = NGX_SOCKADDR_STRLEN;
        break;
    }

    c->addr_text.data = ngx_pnalloc(c->pool, addr_text_max_len);
    if (c->addr_text.data == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, pc->log, 0,
                      "init peer connection addr_text failed: no memory");
        return;
    }

    c->addr_text.len = ngx_sock_ntop(pc->sockaddr, pc->socklen,
                                     c->addr_text.data,
                                     addr_text_max_len, 0);
}
