
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
struct TYPE_7__ {int last_port; int port; int naddrs; TYPE_3__* addrs; } ;
typedef TYPE_2__ ngx_url_t ;
typedef int ngx_uint_t ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {size_t len; int * data; } ;
struct TYPE_8__ {TYPE_1__ name; int socklen; struct sockaddr* sockaddr; } ;
typedef TYPE_3__ ngx_addr_t ;



 int NGX_ERROR ;
 int NGX_INET6_ADDRSTRLEN ;
 int NGX_INET_ADDRSTRLEN ;
 int NGX_OK ;
 int ngx_inet_set_port (struct sockaddr*,int) ;
 int ngx_memcpy (struct sockaddr*,struct sockaddr*,int ) ;
 TYPE_3__* ngx_palloc (int *,int) ;
 struct sockaddr* ngx_pcalloc (int *,int ) ;
 int * ngx_pnalloc (int *,size_t) ;
 size_t ngx_sock_ntop (struct sockaddr*,int ,int *,size_t,int) ;

__attribute__((used)) static ngx_int_t
ngx_inet_add_addr(ngx_pool_t *pool, ngx_url_t *u, struct sockaddr *sockaddr,
    socklen_t socklen, ngx_uint_t total)
{
    u_char *p;
    size_t len;
    ngx_uint_t i, nports;
    ngx_addr_t *addr;
    struct sockaddr *sa;

    nports = u->last_port ? u->last_port - u->port + 1 : 1;

    if (u->addrs == ((void*)0)) {
        u->addrs = ngx_palloc(pool, total * nports * sizeof(ngx_addr_t));
        if (u->addrs == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    for (i = 0; i < nports; i++) {
        sa = ngx_pcalloc(pool, socklen);
        if (sa == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_memcpy(sa, sockaddr, socklen);

        ngx_inet_set_port(sa, u->port + i);

        switch (sa->sa_family) {







        default:
            len = NGX_INET_ADDRSTRLEN + sizeof(":65535") - 1;
        }

        p = ngx_pnalloc(pool, len);
        if (p == ((void*)0)) {
            return NGX_ERROR;
        }

        len = ngx_sock_ntop(sa, socklen, p, len, 1);

        addr = &u->addrs[u->naddrs++];

        addr->sockaddr = sa;
        addr->socklen = socklen;

        addr->name.len = len;
        addr->name.data = p;
    }

    return NGX_OK;
}
