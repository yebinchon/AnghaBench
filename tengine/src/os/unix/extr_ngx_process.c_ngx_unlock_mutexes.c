
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_9__ {int mutex; } ;
typedef TYPE_3__ ngx_slab_pool_t ;
struct TYPE_8__ {int name; scalar_t__ addr; } ;
struct TYPE_10__ {TYPE_2__ shm; } ;
typedef TYPE_4__ ngx_shm_zone_t ;
typedef int ngx_pid_t ;
struct TYPE_11__ {size_t nelts; TYPE_4__* elts; struct TYPE_11__* next; } ;
typedef TYPE_5__ ngx_list_part_t ;
struct TYPE_7__ {int part; } ;
struct TYPE_12__ {int log; TYPE_1__ shared_memory; } ;


 int NGX_LOG_ALERT ;
 int ngx_accept_mutex ;
 scalar_t__ ngx_accept_mutex_ptr ;
 TYPE_6__* ngx_cycle ;
 int ngx_log_error (int ,int ,int ,char*,int *,int ) ;
 scalar_t__ ngx_shmtx_force_unlock (int *,int ) ;

__attribute__((used)) static void
ngx_unlock_mutexes(ngx_pid_t pid)
{
    ngx_uint_t i;
    ngx_shm_zone_t *shm_zone;
    ngx_list_part_t *part;
    ngx_slab_pool_t *sp;






    if (ngx_accept_mutex_ptr) {
        (void) ngx_shmtx_force_unlock(&ngx_accept_mutex, pid);
    }






    part = (ngx_list_part_t *) &ngx_cycle->shared_memory.part;
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

        sp = (ngx_slab_pool_t *) shm_zone[i].shm.addr;

        if (ngx_shmtx_force_unlock(&sp->mutex, pid)) {
            ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                          "shared memory zone \"%V\" was locked by %P",
                          &shm_zone[i].shm.name, pid);
        }
    }
}
