
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef size_t ngx_uint_t ;
struct TYPE_15__ {int mutex; } ;
typedef TYPE_2__ ngx_slab_pool_t ;
typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {int len; int data; } ;
struct TYPE_16__ {TYPE_1__ send; int default_down; } ;
typedef TYPE_3__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_17__ {size_t number; size_t max_number; TYPE_5__* peers; } ;
typedef TYPE_4__ ngx_http_upstream_check_peers_shm_t ;
struct TYPE_18__ {scalar_t__ delete; scalar_t__ socklen; scalar_t__ checksum; int * sockaddr; } ;
typedef TYPE_5__ ngx_http_upstream_check_peer_shm_t ;
struct TYPE_19__ {scalar_t__ socklen; int name; int sockaddr; } ;
typedef TYPE_6__ ngx_addr_t ;
struct TYPE_13__ {TYPE_4__* peers_shm; TYPE_2__* shpool; } ;


 size_t NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ PEER_DELETED ;
 scalar_t__ PEER_NORMAL ;
 TYPE_12__* check_peers_ctx ;
 scalar_t__ ngx_http_upstream_check_init_shm_peer (TYPE_5__*,int *,int ,int *,int *) ;
 scalar_t__ ngx_memcmp (int ,int *,scalar_t__) ;
 int ngx_memcpy (int *,int ,scalar_t__) ;
 int ngx_memzero (TYPE_5__*,int) ;
 scalar_t__ ngx_murmur_hash2 (int ,int ) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;
 int * ngx_slab_alloc_locked (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static ngx_uint_t
ngx_http_upstream_check_add_dynamic_peer_shm(ngx_pool_t *pool,
    ngx_http_upstream_check_srv_conf_t *ucscf, ngx_addr_t *peer_addr)
{
    ngx_int_t rc;
    ngx_uint_t i, index;
    ngx_slab_pool_t *shpool;
    ngx_http_upstream_check_peer_shm_t *peer_shm;
    ngx_http_upstream_check_peers_shm_t *peers_shm;

    if (check_peers_ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    shpool = check_peers_ctx->shpool;
    peers_shm = check_peers_ctx->peers_shm;
    peer_shm = peers_shm->peers;
    index = NGX_ERROR;

    ngx_shmtx_lock(&shpool->mutex);

    for (i = 0; i < peers_shm->number; i++) {


        if (peer_shm[i].delete == PEER_DELETED) {
            continue;
        }




        if (peer_addr->socklen == peer_shm[i].socklen
            && ngx_memcmp(peer_addr->sockaddr, peer_shm[i].sockaddr,
                          peer_addr->socklen) == 0
            && peer_shm[i].checksum
               == ngx_murmur_hash2(ucscf->send.data, ucscf->send.len))
        {
                ngx_shmtx_unlock(&shpool->mutex);
                return i;
        }
    }

    for (i = 0; i < peers_shm->number; i++) {

        if (peer_shm[i].delete == PEER_DELETED) {
            peer_shm[i].delete = PEER_NORMAL;
            index = i;
            break;
        }
    }

    if (index == (ngx_uint_t) NGX_ERROR) {
        if (peers_shm->number >= peers_shm->max_number) {
            goto fail;
        }

        index = peers_shm->number++;
    }

    ngx_memzero(&peer_shm[index], sizeof(ngx_http_upstream_check_peer_shm_t));

    peer_shm[index].socklen = peer_addr->socklen;
    peer_shm[index].sockaddr = ngx_slab_alloc_locked(shpool,
                                                     peer_shm->socklen);
    if (peer_shm[index].sockaddr == ((void*)0)) {
        goto fail;
    }

    ngx_memcpy(peer_shm[index].sockaddr, peer_addr->sockaddr,
               peer_addr->socklen);

    rc = ngx_http_upstream_check_init_shm_peer(&peer_shm[index], ((void*)0),
                                               ucscf->default_down, pool,
                                               &peer_addr->name);
    if (rc != NGX_OK) {
        goto fail;
    }


    peer_shm[index].checksum = ngx_murmur_hash2(ucscf->send.data, ucscf->send.len);

    ngx_shmtx_unlock(&shpool->mutex);
    return index;

fail:

    ngx_shmtx_unlock(&shpool->mutex);
    return NGX_ERROR;
}
