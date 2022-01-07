
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_7__ {size_t number; TYPE_2__* peers; } ;
typedef TYPE_1__ ngx_http_upstream_check_peers_shm_t ;
struct TYPE_8__ {scalar_t__ socklen; int sockaddr; } ;
typedef TYPE_2__ ngx_http_upstream_check_peer_shm_t ;
struct TYPE_9__ {scalar_t__ socklen; int sockaddr; } ;
typedef TYPE_3__ ngx_addr_t ;


 scalar_t__ ngx_memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static ngx_http_upstream_check_peer_shm_t *
ngx_http_upstream_check_find_shm_peer(ngx_http_upstream_check_peers_shm_t *p,
    ngx_addr_t *addr)
{
    ngx_uint_t i;
    ngx_http_upstream_check_peer_shm_t *peer_shm;

    for (i = 0; i < p->number; i++) {

        peer_shm = &p->peers[i];

        if (addr->socklen != peer_shm->socklen) {
            continue;
        }

        if (ngx_memcmp(addr->sockaddr, peer_shm->sockaddr,
                       addr->socklen) == 0) {
            return peer_shm;
        }
    }

    return ((void*)0);
}
