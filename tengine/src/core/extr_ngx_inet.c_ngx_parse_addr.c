
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_6__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct TYPE_7__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct in6_addr {int s6_addr; } ;
typedef int ngx_uint_t ;
typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_8__ {size_t socklen; TYPE_4__* sockaddr; } ;
typedef TYPE_3__ ngx_addr_t ;
typedef scalar_t__ in_addr_t ;
struct TYPE_9__ {scalar_t__ sa_family; } ;


 int AF_INET ;

 scalar_t__ INADDR_NONE ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_inet6_addr (scalar_t__*,size_t,int ) ;
 scalar_t__ ngx_inet_addr (scalar_t__*,size_t) ;
 int ngx_memcpy (int ,int ,int) ;
 int ngx_memzero (struct in6_addr*,int) ;
 TYPE_4__* ngx_pcalloc (int *,size_t) ;

ngx_int_t
ngx_parse_addr(ngx_pool_t *pool, ngx_addr_t *addr, u_char *text, size_t len)
{
    in_addr_t inaddr;
    ngx_uint_t family;
    struct sockaddr_in *sin;
    inaddr = ngx_inet_addr(text, len);

    if (inaddr != INADDR_NONE) {
        family = AF_INET;
        len = sizeof(struct sockaddr_in);







    } else {
        return NGX_DECLINED;
    }

    addr->sockaddr = ngx_pcalloc(pool, len);
    if (addr->sockaddr == ((void*)0)) {
        return NGX_ERROR;
    }

    addr->sockaddr->sa_family = (u_char) family;
    addr->socklen = len;

    switch (family) {
    default:
        sin = (struct sockaddr_in *) addr->sockaddr;
        sin->sin_addr.s_addr = inaddr;
        break;
    }

    return NGX_OK;
}
