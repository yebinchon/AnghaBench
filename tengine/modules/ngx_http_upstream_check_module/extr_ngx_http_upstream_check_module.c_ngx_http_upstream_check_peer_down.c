
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_6__ {size_t down; } ;
typedef TYPE_2__ ngx_http_upstream_check_peer_shm_t ;
struct TYPE_7__ {TYPE_1__* peers_shm; } ;
struct TYPE_5__ {TYPE_2__* peers; } ;


 TYPE_3__* check_peers_ctx ;
 scalar_t__ upstream_check_index_invalid (TYPE_3__*,size_t) ;

ngx_uint_t
ngx_http_upstream_check_peer_down(ngx_uint_t index)
{
    ngx_http_upstream_check_peer_shm_t *peer_shm;

    if (upstream_check_index_invalid(check_peers_ctx, index)) {
        return 0;
    }

    peer_shm = check_peers_ctx->peers_shm->peers;

    return (peer_shm[index].down);
}
