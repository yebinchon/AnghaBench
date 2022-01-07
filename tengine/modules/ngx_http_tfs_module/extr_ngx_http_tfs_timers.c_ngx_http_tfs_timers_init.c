
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
typedef int ngx_shmtx_sh_t ;
struct TYPE_10__ {int len; int * data; } ;
struct TYPE_11__ {size_t size; int * addr; int log; TYPE_1__ name; } ;
typedef TYPE_2__ ngx_shm_t ;
struct TYPE_14__ {scalar_t__ spin; } ;
struct TYPE_12__ {TYPE_5__ ngx_http_tfs_kp_mutex; int * ngx_http_tfs_kp_mutex_ptr; } ;
typedef TYPE_3__ ngx_http_tfs_timers_lock_t ;
struct TYPE_13__ {int pool; int log; } ;
typedef TYPE_4__ ngx_cycle_t ;
typedef int ngx_atomic_t ;


 scalar_t__ NGX_OK ;
 TYPE_3__* ngx_palloc (int ,int) ;
 scalar_t__ ngx_shm_alloc (TYPE_2__*) ;
 scalar_t__ ngx_shmtx_create (TYPE_5__*,int *,int *) ;

ngx_http_tfs_timers_lock_t *
ngx_http_tfs_timers_init(ngx_cycle_t *cycle,
    u_char *lock_file)
{
    u_char *shared;
    size_t size;
    ngx_shm_t shm;
    ngx_http_tfs_timers_lock_t *lock;



    size = 128;

    shm.size = size;
    shm.name.len = sizeof("nginx_tfs_keepalive_zone");
    shm.name.data = (u_char *) "nginx_tfs_keepalive_zone";
    shm.log = cycle->log;

    if (ngx_shm_alloc(&shm) != NGX_OK) {
        return ((void*)0);
    }

    shared = shm.addr;

    lock = ngx_palloc(cycle->pool, sizeof(ngx_http_tfs_timers_lock_t));
    if (lock == ((void*)0)) {
        return ((void*)0);
    }

    lock->ngx_http_tfs_kp_mutex_ptr = (ngx_atomic_t *) shared;
    lock->ngx_http_tfs_kp_mutex.spin = (ngx_uint_t) -1;
    if (ngx_shmtx_create(&lock->ngx_http_tfs_kp_mutex, shared, lock_file)
        != NGX_OK)
    {
        return ((void*)0);
    }


    return lock;
}
