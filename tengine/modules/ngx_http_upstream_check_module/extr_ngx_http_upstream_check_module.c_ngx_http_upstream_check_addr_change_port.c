
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
typedef int ngx_uint_t ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {size_t len; int * data; } ;
struct TYPE_10__ {TYPE_1__ name; int socklen; TYPE_3__* sockaddr; } ;
typedef TYPE_2__ ngx_addr_t ;
struct TYPE_11__ {int sa_family; } ;




 int NGX_ERROR ;
 int NGX_INET6_ADDRSTRLEN ;
 int NGX_INET_ADDRSTRLEN ;
 int NGX_OK ;
 void* htons (int ) ;
 int ngx_memcpy (TYPE_3__*,TYPE_3__*,int ) ;
 TYPE_3__* ngx_palloc (int *,int ) ;
 int * ngx_pnalloc (int *,size_t) ;
 size_t ngx_sock_ntop (TYPE_3__*,int ,int *,size_t,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_addr_change_port(ngx_pool_t *pool, ngx_addr_t *dst,
    ngx_addr_t *src, ngx_uint_t port)
{
    size_t len;
    u_char *p;
    struct sockaddr_in *sin;




    dst->socklen = src->socklen;
    dst->sockaddr = ngx_palloc(pool, dst->socklen);
    if (dst->sockaddr == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(dst->sockaddr, src->sockaddr, dst->socklen);

    switch (dst->sockaddr->sa_family) {

    case 129:

        len = NGX_INET_ADDRSTRLEN + sizeof(":65535") - 1;
        sin = (struct sockaddr_in *) dst->sockaddr;
        sin->sin_port = htons(port);

        break;
    default:
        return NGX_ERROR;
    }

    p = ngx_pnalloc(pool, len);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    len = ngx_sock_ntop(dst->sockaddr, dst->socklen, p, len, 1);

    dst->name.len = len;
    dst->name.data = p;

    return NGX_OK;
}
