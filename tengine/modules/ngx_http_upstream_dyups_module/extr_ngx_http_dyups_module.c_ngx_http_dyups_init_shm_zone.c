
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_slab_pool_t ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_1__ shm; } ;
typedef TYPE_2__ ngx_shm_zone_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int * status; scalar_t__ version; int msg_queue; } ;
typedef TYPE_3__ ngx_dyups_shctx_t ;
struct TYPE_10__ {int * shpool; TYPE_3__* sh; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_6__ ngx_dyups_global_ctx ;
 int ngx_queue_init (int *) ;
 TYPE_3__* ngx_slab_alloc (int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_dyups_init_shm_zone(ngx_shm_zone_t *shm_zone, void *data)
{
    ngx_slab_pool_t *shpool;
    ngx_dyups_shctx_t *sh;

    shpool = (ngx_slab_pool_t *) shm_zone->shm.addr;

    sh = ngx_slab_alloc(shpool, sizeof(ngx_dyups_shctx_t));
    if (sh == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_dyups_global_ctx.sh = sh;
    ngx_dyups_global_ctx.shpool = shpool;

    ngx_queue_init(&sh->msg_queue);

    sh->version = 0;
    sh->status = ((void*)0);

    return NGX_OK;
}
