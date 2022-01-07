
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_16__ {int fails; int reqs; int used; int total; } ;
typedef TYPE_4__ ngx_slab_stat_t ;
struct TYPE_18__ {size_t slab; struct TYPE_18__* next; } ;
struct TYPE_17__ {int min_shift; size_t pfree; int mutex; TYPE_4__* stats; int end; int start; TYPE_6__ free; } ;
typedef TYPE_5__ ngx_slab_pool_t ;
typedef TYPE_6__ ngx_slab_page_t ;
struct TYPE_14__ {scalar_t__ len; } ;
struct TYPE_15__ {int size; TYPE_2__ name; scalar_t__ addr; } ;
struct TYPE_19__ {TYPE_3__ shm; } ;
typedef TYPE_7__ ngx_shm_zone_t ;
typedef int ngx_pool_t ;
struct TYPE_20__ {size_t nelts; TYPE_7__* elts; struct TYPE_20__* next; } ;
typedef TYPE_8__ ngx_list_part_t ;
typedef int ngx_int_t ;
struct TYPE_21__ {int memory; int last_buf; int * last; int * pos; } ;
typedef TYPE_9__ ngx_buf_t ;
struct TYPE_13__ {TYPE_8__ part; } ;
struct TYPE_12__ {TYPE_1__ shared_memory; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int NGX_SLAB_PAGE_ENTRY_FORMAT ;
 scalar_t__ NGX_SLAB_PAGE_ENTRY_SIZE ;
 int NGX_SLAB_SHM_FORMAT ;
 scalar_t__ NGX_SLAB_SHM_SIZE ;
 int NGX_SLAB_SLOT_ENTRY_FORMAT ;
 scalar_t__ NGX_SLAB_SLOT_ENTRY_SIZE ;
 int NGX_SLAB_SUMMARY_FORMAT ;
 scalar_t__ NGX_SLAB_SUMMARY_SIZE ;
 TYPE_11__* ngx_cycle ;
 int ngx_pagesize_shift ;
 int * ngx_palloc (int *,size_t) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;
 int * ngx_snprintf (int *,scalar_t__,int ,...) ;

__attribute__((used)) static ngx_int_t
ngx_http_slab_stat_buf(ngx_pool_t *pool, ngx_buf_t *b)
{
    u_char *p;
    size_t pz, size;
    ngx_uint_t i, k, n;
    ngx_shm_zone_t *shm_zone;
    ngx_slab_pool_t *shpool;
    ngx_slab_page_t *page;
    ngx_slab_stat_t *stats;
    volatile ngx_list_part_t *part;
    pz = 0;



    part = &ngx_cycle->shared_memory.part;
    shm_zone = part->elts;

    for (i = 0; ; i++) {

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }
            part = part->next;
            shm_zone = part->elts;
            i = 0;
        }

        pz += (sizeof("* shared memory: \n") - 1) + (size_t)shm_zone[i].shm.name.len;
        pz += (3 * 12 + sizeof("total:(KB) free:(KB) size:(KB)\n") - 1);

        shpool = (ngx_slab_pool_t *) shm_zone[i].shm.addr;

        ngx_shmtx_lock(&shpool->mutex);

        for (page = shpool->free.next; page != &shpool->free; page = page->next) {
            pz += (12 + 2 * 16 + sizeof("pages:(KB) start: end:\n") - 1);
        }

        n = ngx_pagesize_shift - shpool->min_shift;

        ngx_shmtx_unlock(&shpool->mutex);

        for (k = 0; k < n; k++) {
            pz += (12 * 5 + sizeof("slot:(Bytes) total: used: reqs: fails:\n") - 1);
        }

    }


    p = ngx_palloc(pool, pz * 2);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    b->pos = p;

    size = 1 << ngx_pagesize_shift;

    part = &ngx_cycle->shared_memory.part;
    shm_zone = part->elts;

    for (i = 0; ; i++) {

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }
            part = part->next;
            shm_zone = part->elts;
            i = 0;
        }

        shpool = (ngx_slab_pool_t *) shm_zone[i].shm.addr;

        p = ngx_snprintf(p, (sizeof("* shared memory: \n") - 1) + shm_zone[i].shm.name.len,
            "* shared memory: %V\n", &shm_zone[i].shm.name);

        ngx_shmtx_lock(&shpool->mutex);

        p = ngx_snprintf(p, (3 * 12 + sizeof("total:(KB) free:(KB) size:(KB)\n") - 1), "total:%12z(KB) free:%12z(KB) size:%12z(KB)\n",
            shm_zone[i].shm.size / 1024, shpool->pfree * size / 1024,
            size / 1024, shpool->pfree);

        for (page = shpool->free.next; page != &shpool->free; page = page->next) {
            p = ngx_snprintf(p, (12 + 2 * 16 + sizeof("pages:(KB) start: end:\n") - 1),
                "pages:%12z(KB) start:%p end:%p\n", page->slab * size / 1024,
                shpool->start, shpool->end);
        }

        stats = shpool->stats;

        n = ngx_pagesize_shift - shpool->min_shift;

        for (k = 0; k < n; k++) {
            p = ngx_snprintf(p, (12 * 5 + sizeof("slot:(Bytes) total: used: reqs: fails:\n") - 1), "slot:%12z(Bytes) total:%12z used:%12z reqs:%12z fails:%12z\n",
                1 << (k + shpool->min_shift),
                stats[k].total, stats[k].used, stats[k].reqs, stats[k].fails);
        }

        ngx_shmtx_unlock(&shpool->mutex);
    }

    b->last = p;
    b->memory = 1;
    b->last_buf = 1;

    return NGX_OK;
}
