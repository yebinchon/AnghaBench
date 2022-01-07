
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sockaddr; } ;
typedef TYPE_1__ ngx_http_upstream_check_peer_shm_t ;
struct TYPE_5__ {int shpool; } ;


 TYPE_3__* check_peers_ctx ;
 int ngx_slab_free_locked (int ,int ) ;

__attribute__((used)) static void
ngx_http_upstream_check_clear_dynamic_peer_shm(
    ngx_http_upstream_check_peer_shm_t *peer_shm)
{
    if (check_peers_ctx == ((void*)0)) {
        return;
    }

    ngx_slab_free_locked(check_peers_ctx->shpool, peer_shm->sockaddr);
}
