
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ (* init ) (TYPE_2__*,void*) ;int noreuse; int shm; void* data; } ;
typedef TYPE_2__ ngx_shm_zone_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {int log; int * cycle; TYPE_4__* lmcf; TYPE_2__ zone; } ;
typedef TYPE_3__ ngx_http_lua_shm_zone_ctx_t ;
struct TYPE_11__ {scalar_t__ shm_zones_inited; scalar_t__ (* init_handler ) (int ,TYPE_4__*,int ) ;int lua; TYPE_1__* shm_zones; } ;
typedef TYPE_4__ ngx_http_lua_main_conf_t ;
typedef int ngx_cycle_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int dd (char*,...) ;
 int volatile* ngx_cycle ;
 int ngx_test_config ;
 scalar_t__ stub1 (TYPE_2__*,void*) ;
 scalar_t__ stub2 (int ,TYPE_4__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_shared_memory_init(ngx_shm_zone_t *shm_zone, void *data)
{
    ngx_http_lua_shm_zone_ctx_t *octx = data;
    ngx_shm_zone_t *ozone;
    void *odata;

    ngx_int_t rc;
    volatile ngx_cycle_t *saved_cycle;
    ngx_http_lua_main_conf_t *lmcf;
    ngx_http_lua_shm_zone_ctx_t *ctx;
    ngx_shm_zone_t *zone;

    ctx = (ngx_http_lua_shm_zone_ctx_t *) shm_zone->data;
    zone = &ctx->zone;

    odata = ((void*)0);
    if (octx) {
        ozone = &octx->zone;
        odata = ozone->data;
    }

    zone->shm = shm_zone->shm;




    if (zone->init(zone, odata) != NGX_OK) {
        return NGX_ERROR;
    }

    dd("get lmcf");

    lmcf = ctx->lmcf;
    if (lmcf == ((void*)0)) {
        return NGX_ERROR;
    }

    dd("lmcf->lua: %p", lmcf->lua);

    lmcf->shm_zones_inited++;

    if (lmcf->shm_zones_inited == lmcf->shm_zones->nelts
        && lmcf->init_handler && !ngx_test_config)
    {
        saved_cycle = ngx_cycle;
        ngx_cycle = ctx->cycle;

        rc = lmcf->init_handler(ctx->log, lmcf, lmcf->lua);

        ngx_cycle = saved_cycle;

        if (rc != NGX_OK) {

            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
