#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* data; } ;
struct TYPE_14__ {TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_stream_upstream_srv_conf_t ;
struct TYPE_15__ {struct TYPE_15__* next; TYPE_4__* peer; int /*<<< orphan*/ * shpool; TYPE_5__* name; } ;
typedef  TYPE_3__ ngx_stream_upstream_rr_peers_t ;
struct TYPE_16__ {struct TYPE_16__* next; } ;
typedef  TYPE_4__ ngx_stream_upstream_rr_peer_t ;
struct TYPE_17__ {int len; TYPE_3__* data; } ;
typedef  TYPE_5__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_slab_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static ngx_stream_upstream_rr_peers_t *
FUNC3(ngx_slab_pool_t *shpool,
    ngx_stream_upstream_srv_conf_t *uscf)
{
    ngx_str_t                       *name;
    ngx_stream_upstream_rr_peer_t   *peer, **peerp;
    ngx_stream_upstream_rr_peers_t  *peers, *backup;

    peers = FUNC1(shpool, sizeof(ngx_stream_upstream_rr_peers_t));
    if (peers == NULL) {
        return NULL;
    }

    FUNC0(peers, uscf->peer.data, sizeof(ngx_stream_upstream_rr_peers_t));

    name = FUNC1(shpool, sizeof(ngx_str_t));
    if (name == NULL) {
        return NULL;
    }

    name->data = FUNC1(shpool, peers->name->len);
    if (name->data == NULL) {
        return NULL;
    }

    FUNC0(name->data, peers->name->data, peers->name->len);
    name->len = peers->name->len;

    peers->name = name;

    peers->shpool = shpool;

    for (peerp = &peers->peer; *peerp; peerp = &peer->next) {
        /* pool is unlocked */
        peer = FUNC2(peers, *peerp);
        if (peer == NULL) {
            return NULL;
        }

        *peerp = peer;
    }

    if (peers->next == NULL) {
        goto done;
    }

    backup = FUNC1(shpool, sizeof(ngx_stream_upstream_rr_peers_t));
    if (backup == NULL) {
        return NULL;
    }

    FUNC0(backup, peers->next, sizeof(ngx_stream_upstream_rr_peers_t));

    backup->name = name;

    backup->shpool = shpool;

    for (peerp = &backup->peer; *peerp; peerp = &peer->next) {
        /* pool is unlocked */
        peer = FUNC2(backup, *peerp);
        if (peer == NULL) {
            return NULL;
        }

        *peerp = peer;
    }

    peers->next = backup;

done:

    uscf->peer.data = peers;

    return peers;
}