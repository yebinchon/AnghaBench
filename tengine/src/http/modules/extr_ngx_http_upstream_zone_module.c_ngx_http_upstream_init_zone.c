
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_18__ {TYPE_7__* data; int * log_ctx; } ;
typedef TYPE_4__ ngx_slab_pool_t ;
struct TYPE_23__ {size_t len; } ;
struct TYPE_16__ {TYPE_9__ name; scalar_t__ exists; scalar_t__ addr; } ;
struct TYPE_19__ {TYPE_2__ shm; TYPE_8__* data; } ;
typedef TYPE_5__ ngx_shm_zone_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {TYPE_7__* data; } ;
struct TYPE_20__ {TYPE_5__* shm_zone; TYPE_1__ peer; } ;
typedef TYPE_6__ ngx_http_upstream_srv_conf_t ;
struct TYPE_21__ {struct TYPE_21__* zone_next; } ;
typedef TYPE_7__ ngx_http_upstream_rr_peers_t ;
struct TYPE_17__ {size_t nelts; TYPE_6__** elts; } ;
struct TYPE_22__ {TYPE_3__ upstreams; } ;
typedef TYPE_8__ ngx_http_upstream_main_conf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_7__* ngx_http_upstream_zone_copy_peers (TYPE_4__*,TYPE_6__*) ;
 int * ngx_slab_alloc (TYPE_4__*,size_t) ;
 int ngx_sprintf (int *,char*,TYPE_9__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_init_zone(ngx_shm_zone_t *shm_zone, void *data)
{
    size_t len;
    ngx_uint_t i;
    ngx_slab_pool_t *shpool;
    ngx_http_upstream_rr_peers_t *peers, **peersp;
    ngx_http_upstream_srv_conf_t *uscf, **uscfp;
    ngx_http_upstream_main_conf_t *umcf;

    shpool = (ngx_slab_pool_t *) shm_zone->shm.addr;
    umcf = shm_zone->data;
    uscfp = umcf->upstreams.elts;

    if (shm_zone->shm.exists) {
        peers = shpool->data;

        for (i = 0; i < umcf->upstreams.nelts; i++) {
            uscf = uscfp[i];

            if (uscf->shm_zone != shm_zone) {
                continue;
            }

            uscf->peer.data = peers;
            peers = peers->zone_next;
        }

        return NGX_OK;
    }

    len = sizeof(" in upstream zone \"\"") + shm_zone->shm.name.len;

    shpool->log_ctx = ngx_slab_alloc(shpool, len);
    if (shpool->log_ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_sprintf(shpool->log_ctx, " in upstream zone \"%V\"%Z",
                &shm_zone->shm.name);




    peersp = (ngx_http_upstream_rr_peers_t **) (void *) &shpool->data;

    for (i = 0; i < umcf->upstreams.nelts; i++) {
        uscf = uscfp[i];

        if (uscf->shm_zone != shm_zone) {
            continue;
        }

        peers = ngx_http_upstream_zone_copy_peers(shpool, uscf);
        if (peers == ((void*)0)) {
            return NGX_ERROR;
        }

        *peersp = peers;
        peersp = &peers->zone_next;
    }

    return NGX_OK;
}
