
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int len; TYPE_4__* data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_slab_pool_t ;
struct TYPE_13__ {TYPE_4__* data; } ;
struct TYPE_15__ {TYPE_1__ peer; } ;
typedef TYPE_3__ ngx_http_upstream_srv_conf_t ;
struct TYPE_16__ {struct TYPE_16__* next; TYPE_5__* peer; int * shpool; TYPE_2__* name; } ;
typedef TYPE_4__ ngx_http_upstream_rr_peers_t ;
struct TYPE_17__ {struct TYPE_17__* next; } ;
typedef TYPE_5__ ngx_http_upstream_rr_peer_t ;


 TYPE_5__* ngx_http_upstream_zone_copy_peer (TYPE_4__*,TYPE_5__*) ;
 int ngx_memcpy (TYPE_4__*,TYPE_4__*,int) ;
 void* ngx_slab_alloc (int *,int) ;

__attribute__((used)) static ngx_http_upstream_rr_peers_t *
ngx_http_upstream_zone_copy_peers(ngx_slab_pool_t *shpool,
    ngx_http_upstream_srv_conf_t *uscf)
{
    ngx_str_t *name;
    ngx_http_upstream_rr_peer_t *peer, **peerp;
    ngx_http_upstream_rr_peers_t *peers, *backup;

    peers = ngx_slab_alloc(shpool, sizeof(ngx_http_upstream_rr_peers_t));
    if (peers == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memcpy(peers, uscf->peer.data, sizeof(ngx_http_upstream_rr_peers_t));

    name = ngx_slab_alloc(shpool, sizeof(ngx_str_t));
    if (name == ((void*)0)) {
        return ((void*)0);
    }

    name->data = ngx_slab_alloc(shpool, peers->name->len);
    if (name->data == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memcpy(name->data, peers->name->data, peers->name->len);
    name->len = peers->name->len;

    peers->name = name;

    peers->shpool = shpool;

    for (peerp = &peers->peer; *peerp; peerp = &peer->next) {

        peer = ngx_http_upstream_zone_copy_peer(peers, *peerp);
        if (peer == ((void*)0)) {
            return ((void*)0);
        }

        *peerp = peer;
    }

    if (peers->next == ((void*)0)) {
        goto done;
    }

    backup = ngx_slab_alloc(shpool, sizeof(ngx_http_upstream_rr_peers_t));
    if (backup == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memcpy(backup, peers->next, sizeof(ngx_http_upstream_rr_peers_t));

    backup->name = name;

    backup->shpool = shpool;

    for (peerp = &backup->peer; *peerp; peerp = &peer->next) {

        peer = ngx_http_upstream_zone_copy_peer(backup, *peerp);
        if (peer == ((void*)0)) {
            return ((void*)0);
        }

        *peerp = peer;
    }

    peers->next = backup;

done:

    uscf->peer.data = peers;

    return peers;
}
