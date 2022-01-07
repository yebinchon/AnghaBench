
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_7__ {int num_per_block; scalar_t__ used; scalar_t__ total; scalar_t__ cur_epoch; int free_queue; TYPE_2__* lmcf; } ;
typedef TYPE_1__ ngx_http_lua_sema_mm_t ;
struct TYPE_8__ {TYPE_1__* sema_mm; } ;
typedef TYPE_2__ ngx_http_lua_main_conf_t ;
struct TYPE_9__ {int pool; } ;
typedef TYPE_3__ ngx_conf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_1__* ngx_palloc (int ,int) ;
 int ngx_queue_init (int *) ;

ngx_int_t
ngx_http_lua_sema_mm_init(ngx_conf_t *cf, ngx_http_lua_main_conf_t *lmcf)
{
    ngx_http_lua_sema_mm_t *mm;

    mm = ngx_palloc(cf->pool, sizeof(ngx_http_lua_sema_mm_t));
    if (mm == ((void*)0)) {
        return NGX_ERROR;
    }

    lmcf->sema_mm = mm;
    mm->lmcf = lmcf;

    ngx_queue_init(&mm->free_queue);
    mm->cur_epoch = 0;
    mm->total = 0;
    mm->used = 0;




    mm->num_per_block = 4095;

    return NGX_OK;
}
