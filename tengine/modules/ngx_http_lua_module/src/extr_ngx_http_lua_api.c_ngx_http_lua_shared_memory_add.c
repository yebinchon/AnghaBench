
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_17__ {TYPE_3__* data; int init; } ;
typedef TYPE_2__ ngx_shm_zone_t ;
typedef int ngx_int_t ;
struct TYPE_18__ {TYPE_2__ zone; TYPE_1__* cycle; int * log; TYPE_4__* lmcf; } ;
typedef TYPE_3__ ngx_http_lua_shm_zone_ctx_t ;
struct TYPE_19__ {int requires_shm; int * shm_zones; } ;
typedef TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_20__ {TYPE_1__* cycle; int pool; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_array_t ;
struct TYPE_16__ {int new_log; } ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 TYPE_2__** ngx_array_push (int *) ;
 TYPE_4__* ngx_http_conf_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_shared_memory_init ;
 int ngx_memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int * ngx_palloc (int ,int) ;
 TYPE_3__* ngx_pcalloc (int ,int) ;
 TYPE_2__* ngx_shared_memory_add (TYPE_5__*,int *,size_t,void*) ;

ngx_shm_zone_t *
ngx_http_lua_shared_memory_add(ngx_conf_t *cf, ngx_str_t *name, size_t size,
    void *tag)
{
    ngx_http_lua_main_conf_t *lmcf;
    ngx_shm_zone_t **zp;
    ngx_shm_zone_t *zone;
    ngx_http_lua_shm_zone_ctx_t *ctx;
    ngx_int_t n;

    lmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_lua_module);
    if (lmcf == ((void*)0)) {
        return ((void*)0);
    }

    if (lmcf->shm_zones == ((void*)0)) {
        lmcf->shm_zones = ngx_palloc(cf->pool, sizeof(ngx_array_t));
        if (lmcf->shm_zones == ((void*)0)) {
            return ((void*)0);
        }

        if (ngx_array_init(lmcf->shm_zones, cf->pool, 2,
                           sizeof(ngx_shm_zone_t *))
            != NGX_OK)
        {
            return ((void*)0);
        }
    }

    zone = ngx_shared_memory_add(cf, name, (size_t) size, tag);
    if (zone == ((void*)0)) {
        return ((void*)0);
    }

    if (zone->data) {
        ctx = (ngx_http_lua_shm_zone_ctx_t *) zone->data;
        return &ctx->zone;
    }

    n = sizeof(ngx_http_lua_shm_zone_ctx_t);

    ctx = ngx_pcalloc(cf->pool, n);
    if (ctx == ((void*)0)) {
        return ((void*)0);
    }

    ctx->lmcf = lmcf;
    ctx->log = &cf->cycle->new_log;
    ctx->cycle = cf->cycle;

    ngx_memcpy(&ctx->zone, zone, sizeof(ngx_shm_zone_t));

    zp = ngx_array_push(lmcf->shm_zones);
    if (zp == ((void*)0)) {
        return ((void*)0);
    }

    *zp = zone;


    zone->init = ngx_http_lua_shared_memory_init;
    zone->data = ctx;

    lmcf->requires_shm = 1;

    return &ctx->zone;
}
