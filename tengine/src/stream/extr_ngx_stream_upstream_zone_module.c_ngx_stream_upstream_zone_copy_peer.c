
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * shpool; } ;
typedef TYPE_3__ ngx_stream_upstream_rr_peers_t ;
struct TYPE_13__ {int len; TYPE_4__* data; } ;
struct TYPE_12__ {int len; TYPE_4__* data; } ;
struct TYPE_15__ {int socklen; struct TYPE_15__* sockaddr; TYPE_2__ name; TYPE_1__ server; } ;
typedef TYPE_4__ ngx_stream_upstream_rr_peer_t ;
typedef int ngx_sockaddr_t ;
typedef int ngx_slab_pool_t ;


 int NGX_SOCKADDR_STRLEN ;
 int ngx_memcpy (TYPE_4__*,TYPE_4__*,int) ;
 TYPE_4__* ngx_slab_alloc_locked (int *,int) ;
 void* ngx_slab_calloc_locked (int *,int) ;
 int ngx_slab_free_locked (int *,TYPE_4__*) ;

__attribute__((used)) static ngx_stream_upstream_rr_peer_t *
ngx_stream_upstream_zone_copy_peer(ngx_stream_upstream_rr_peers_t *peers,
    ngx_stream_upstream_rr_peer_t *src)
{
    ngx_slab_pool_t *pool;
    ngx_stream_upstream_rr_peer_t *dst;

    pool = peers->shpool;

    dst = ngx_slab_calloc_locked(pool, sizeof(ngx_stream_upstream_rr_peer_t));
    if (dst == ((void*)0)) {
        return ((void*)0);
    }

    if (src) {
        ngx_memcpy(dst, src, sizeof(ngx_stream_upstream_rr_peer_t));
        dst->sockaddr = ((void*)0);
        dst->name.data = ((void*)0);
        dst->server.data = ((void*)0);
    }

    dst->sockaddr = ngx_slab_calloc_locked(pool, sizeof(ngx_sockaddr_t));
    if (dst->sockaddr == ((void*)0)) {
        goto failed;
    }

    dst->name.data = ngx_slab_calloc_locked(pool, NGX_SOCKADDR_STRLEN);
    if (dst->name.data == ((void*)0)) {
        goto failed;
    }

    if (src) {
        ngx_memcpy(dst->sockaddr, src->sockaddr, src->socklen);
        ngx_memcpy(dst->name.data, src->name.data, src->name.len);

        dst->server.data = ngx_slab_alloc_locked(pool, src->server.len);
        if (dst->server.data == ((void*)0)) {
            goto failed;
        }

        ngx_memcpy(dst->server.data, src->server.data, src->server.len);
    }

    return dst;

failed:

    if (dst->server.data) {
        ngx_slab_free_locked(pool, dst->server.data);
    }

    if (dst->name.data) {
        ngx_slab_free_locked(pool, dst->name.data);
    }

    if (dst->sockaddr) {
        ngx_slab_free_locked(pool, dst->sockaddr);
    }

    ngx_slab_free_locked(pool, dst);

    return ((void*)0);
}
