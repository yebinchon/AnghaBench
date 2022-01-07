
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_9__ {scalar_t__ len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {int lock; int mutex; int owner; int down; scalar_t__ busyness; scalar_t__ rise_count; scalar_t__ fall_count; scalar_t__ access_count; scalar_t__ access_time; } ;
typedef TYPE_2__ ngx_http_upstream_check_peer_shm_t ;
struct TYPE_11__ {scalar_t__ len; } ;
struct TYPE_12__ {TYPE_3__ lock_file; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_INVALID_PID ;
 scalar_t__ NGX_OK ;
 TYPE_8__* ngx_cycle ;
 int * ngx_pnalloc (int *,scalar_t__) ;
 scalar_t__ ngx_shmtx_create (int *,int *,int *) ;
 int ngx_sprintf (int *,char*,TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_init_shm_peer(ngx_http_upstream_check_peer_shm_t *psh,
    ngx_http_upstream_check_peer_shm_t *opsh, ngx_uint_t init_down,
    ngx_pool_t *pool, ngx_str_t *name)
{
    u_char *file;

    if (opsh) {
        psh->access_time = opsh->access_time;
        psh->access_count = opsh->access_count;

        psh->fall_count = opsh->fall_count;
        psh->rise_count = opsh->rise_count;
        psh->busyness = opsh->busyness;

        psh->down = opsh->down;

    } else{
        psh->access_time = 0;
        psh->access_count = 0;

        psh->fall_count = 0;
        psh->rise_count = 0;
        psh->busyness = 0;

        psh->down = init_down;
    }

    psh->owner = NGX_INVALID_PID;







    file = ngx_pnalloc(pool, ngx_cycle->lock_file.len + name->len);
    if (file == ((void*)0)) {
        return NGX_ERROR;
    }

    (void) ngx_sprintf(file, "%V%V%Z", &ngx_cycle->lock_file, name);



    if (ngx_shmtx_create(&psh->mutex, &psh->lock, file) != NGX_OK) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
