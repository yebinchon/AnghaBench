
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {int min_shift; int lock; int mutex; struct TYPE_14__* addr; struct TYPE_14__* end; } ;
typedef TYPE_1__ ngx_slab_pool_t ;
struct TYPE_18__ {scalar_t__ len; } ;
struct TYPE_19__ {int size; TYPE_5__ name; TYPE_1__* addr; scalar_t__ exists; } ;
struct TYPE_15__ {TYPE_7__ shm; } ;
typedef TYPE_2__ ngx_shm_zone_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_17__ {scalar_t__ len; } ;
struct TYPE_16__ {TYPE_4__ lock_file; int pool; int log; } ;
typedef TYPE_3__ ngx_cycle_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_5__*,TYPE_1__*,TYPE_1__*) ;
 int * ngx_pnalloc (int ,scalar_t__) ;
 scalar_t__ ngx_shm_remap (TYPE_7__*,TYPE_1__*) ;
 scalar_t__ ngx_shmtx_create (int *,int *,int *) ;
 int ngx_slab_init (TYPE_1__*) ;
 int ngx_sprintf (int *,char*,TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static ngx_int_t
ngx_init_zone_pool(ngx_cycle_t *cycle, ngx_shm_zone_t *zn)
{
    u_char *file;
    ngx_slab_pool_t *sp;

    sp = (ngx_slab_pool_t *) zn->shm.addr;

    if (zn->shm.exists) {

        if (sp == sp->addr) {
            return NGX_OK;
        }
        ngx_log_error(NGX_LOG_EMERG, cycle->log, 0,
                      "shared zone \"%V\" has no equal addresses: %p vs %p",
                      &zn->shm.name, sp->addr, sp);
        return NGX_ERROR;
    }

    sp->end = zn->shm.addr + zn->shm.size;
    sp->min_shift = 3;
    sp->addr = zn->shm.addr;







    file = ngx_pnalloc(cycle->pool,
                       cycle->lock_file.len + zn->shm.name.len + 1);
    if (file == ((void*)0)) {
        return NGX_ERROR;
    }

    (void) ngx_sprintf(file, "%V%V%Z", &cycle->lock_file, &zn->shm.name);



    if (ngx_shmtx_create(&sp->mutex, &sp->lock, file) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_slab_init(sp);

    return NGX_OK;
}
