
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_8__ {TYPE_2__* shm; } ;
typedef TYPE_3__ ngx_http_upstream_check_peer_t ;
struct TYPE_6__ {TYPE_3__* elts; } ;
struct TYPE_9__ {TYPE_1__ peers; } ;
struct TYPE_7__ {int mutex; int access_count; int busyness; } ;


 TYPE_4__* check_peers_ctx ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;
 scalar_t__ upstream_check_index_invalid (TYPE_4__*,size_t) ;

void
ngx_http_upstream_check_get_peer(ngx_uint_t index)
{
    ngx_http_upstream_check_peer_t *peer;

    if (upstream_check_index_invalid(check_peers_ctx, index)) {
        return;
    }

    peer = check_peers_ctx->peers.elts;

    ngx_shmtx_lock(&peer[index].shm->mutex);

    peer[index].shm->busyness++;
    peer[index].shm->access_count++;

    ngx_shmtx_unlock(&peer[index].shm->mutex);
}
