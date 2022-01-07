
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sockaddr {int sa_family; } ;
typedef struct sockaddr u_char ;
typedef size_t socklen_t ;
typedef scalar_t__ ngx_socket_t ;
struct TYPE_10__ {size_t len; struct sockaddr* data; } ;
struct TYPE_11__ {size_t socklen; int addr_text_max_len; int rcvbuf; int sndbuf; int setfib; int fastopen; int backlog; int type; scalar_t__ fd; int sentinel; int rbtree; TYPE_2__ addr_text; struct sockaddr* sockaddr; } ;
typedef TYPE_3__ ngx_listening_t ;
struct TYPE_12__ {int pool; TYPE_1__* cycle; } ;
typedef TYPE_4__ ngx_conf_t ;
struct TYPE_9__ {int listening; } ;





 int NGX_INET6_ADDRSTRLEN ;
 int NGX_INET_ADDRSTRLEN ;
 int NGX_LISTEN_BACKLOG ;
 int NGX_SOCKADDR_STRLEN ;
 int NGX_UNIX_ADDRSTRLEN ;
 int SOCK_STREAM ;
 TYPE_3__* ngx_array_push (int *) ;
 int ngx_memcpy (struct sockaddr*,struct sockaddr*,size_t) ;
 int ngx_memzero (TYPE_3__*,int) ;
 struct sockaddr* ngx_palloc (int ,size_t) ;
 struct sockaddr* ngx_pnalloc (int ,size_t) ;
 int ngx_rbtree_init (int *,int *,int ) ;
 size_t ngx_sock_ntop (struct sockaddr*,size_t,struct sockaddr*,int,int) ;
 int ngx_udp_rbtree_insert_value ;

ngx_listening_t *
ngx_create_listening(ngx_conf_t *cf, struct sockaddr *sockaddr,
    socklen_t socklen)
{
    size_t len;
    ngx_listening_t *ls;
    struct sockaddr *sa;
    u_char text[NGX_SOCKADDR_STRLEN];

    ls = ngx_array_push(&cf->cycle->listening);
    if (ls == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memzero(ls, sizeof(ngx_listening_t));

    sa = ngx_palloc(cf->pool, socklen);
    if (sa == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memcpy(sa, sockaddr, socklen);

    ls->sockaddr = sa;
    ls->socklen = socklen;

    len = ngx_sock_ntop(sa, socklen, text, NGX_SOCKADDR_STRLEN, 1);
    ls->addr_text.len = len;

    switch (ls->sockaddr->sa_family) {
    case 130:
        ls->addr_text_max_len = NGX_INET_ADDRSTRLEN;
        break;
    default:
        ls->addr_text_max_len = NGX_SOCKADDR_STRLEN;
        break;
    }

    ls->addr_text.data = ngx_pnalloc(cf->pool, len);
    if (ls->addr_text.data == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memcpy(ls->addr_text.data, text, len);


    ngx_rbtree_init(&ls->rbtree, &ls->sentinel, ngx_udp_rbtree_insert_value);


    ls->fd = (ngx_socket_t) -1;
    ls->type = SOCK_STREAM;

    ls->backlog = NGX_LISTEN_BACKLOG;
    ls->rcvbuf = -1;
    ls->sndbuf = -1;
    return ls;
}
