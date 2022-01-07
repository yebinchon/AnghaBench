
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_4__ sin6_addr; int sin6_family; } ;
struct TYPE_12__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct in6_addr {int s6_addr; } ;
typedef int ngx_uint_t ;
struct TYPE_15__ {struct sockaddr_in6 sockaddr_in6; struct sockaddr_in sockaddr_in; } ;
typedef TYPE_5__ ngx_sockaddr_t ;
typedef int ngx_resolver_t ;
struct TYPE_13__ {struct in6_addr* addrs6; struct in6_addr addr6; } ;
struct TYPE_11__ {int * addrs; int addr; } ;
struct TYPE_16__ {int naddrs; int naddrs6; TYPE_3__ u6; TYPE_1__ u; } ;
typedef TYPE_6__ ngx_resolver_node_t ;
struct TYPE_17__ {int socklen; struct sockaddr* sockaddr; } ;
typedef TYPE_7__ ngx_resolver_addr_t ;
typedef int in_addr_t ;


 int AF_INET ;
 int AF_INET6 ;
 int ngx_memcpy (int ,int ,int) ;
 int ngx_random () ;
 void* ngx_resolver_calloc (int *,int) ;
 int ngx_resolver_free (int *,TYPE_7__*) ;

__attribute__((used)) static ngx_resolver_addr_t *
ngx_resolver_export(ngx_resolver_t *r, ngx_resolver_node_t *rn,
    ngx_uint_t rotate)
{
    ngx_uint_t d, i, j, n;
    in_addr_t *addr;
    ngx_sockaddr_t *sockaddr;
    struct sockaddr_in *sin;
    ngx_resolver_addr_t *dst;





    n = rn->naddrs;




    dst = ngx_resolver_calloc(r, n * sizeof(ngx_resolver_addr_t));
    if (dst == ((void*)0)) {
        return ((void*)0);
    }

    sockaddr = ngx_resolver_calloc(r, n * sizeof(ngx_sockaddr_t));
    if (sockaddr == ((void*)0)) {
        ngx_resolver_free(r, dst);
        return ((void*)0);
    }

    i = 0;
    d = rotate ? ngx_random() % n : 0;

    if (rn->naddrs) {
        j = rotate ? ngx_random() % rn->naddrs : 0;

        addr = (rn->naddrs == 1) ? &rn->u.addr : rn->u.addrs;

        do {
            sin = &sockaddr[d].sockaddr_in;
            sin->sin_family = AF_INET;
            sin->sin_addr.s_addr = addr[j++];
            dst[d].sockaddr = (struct sockaddr *) sin;
            dst[d++].socklen = sizeof(struct sockaddr_in);

            if (d == n) {
                d = 0;
            }

            if (j == (ngx_uint_t) rn->naddrs) {
                j = 0;
            }
        } while (++i < (ngx_uint_t) rn->naddrs);
    }
    return dst;
}
