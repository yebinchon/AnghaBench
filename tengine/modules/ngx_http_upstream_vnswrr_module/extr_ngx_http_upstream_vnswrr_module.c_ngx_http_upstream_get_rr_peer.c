
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {TYPE_2__* peer; } ;
typedef TYPE_1__ ngx_http_upstream_rr_peers_t ;
struct TYPE_6__ {scalar_t__ current_weight; scalar_t__ effective_weight; struct TYPE_6__* next; } ;
typedef TYPE_2__ ngx_http_upstream_rr_peer_t ;


 scalar_t__ NGX_ERROR ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_get_rr_peer(ngx_http_upstream_rr_peers_t *peers,
    ngx_http_upstream_rr_peer_t **rpeer)
{
    ngx_int_t total;
    ngx_uint_t i, p;
    ngx_http_upstream_rr_peer_t *peer, *best;

    best = ((void*)0);
    p = 0;
    total = 0;
    for (peer = peers->peer, i = 0; peer; peer = peer->next, i++) {
        peer->current_weight += peer->effective_weight;
        total += peer->effective_weight;

        if (best == ((void*)0) || peer->current_weight > best->current_weight) {
            best = peer;
            p = i;
        }
    }

    *rpeer = best;
    if (best == ((void*)0)) {
        return NGX_ERROR;
    }

    best->current_weight -= total;

    return p;
}
