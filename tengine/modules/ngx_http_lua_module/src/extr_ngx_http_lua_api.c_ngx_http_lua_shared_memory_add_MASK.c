#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_17__ {TYPE_3__* data; int /*<<< orphan*/  init; } ;
typedef  TYPE_2__ ngx_shm_zone_t ;
typedef  int ngx_int_t ;
struct TYPE_18__ {TYPE_2__ zone; TYPE_1__* cycle; int /*<<< orphan*/ * log; TYPE_4__* lmcf; } ;
typedef  TYPE_3__ ngx_http_lua_shm_zone_ctx_t ;
struct TYPE_19__ {int requires_shm; int /*<<< orphan*/ * shm_zones; } ;
typedef  TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_20__ {TYPE_1__* cycle; int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_array_t ;
struct TYPE_16__ {int /*<<< orphan*/  new_log; } ;

/* Variables and functions */
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__** FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  ngx_http_lua_shared_memory_init ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,size_t,void*) ; 

ngx_shm_zone_t *
FUNC7(ngx_conf_t *cf, ngx_str_t *name, size_t size,
    void *tag)
{
    ngx_http_lua_main_conf_t     *lmcf;
    ngx_shm_zone_t              **zp;
    ngx_shm_zone_t               *zone;
    ngx_http_lua_shm_zone_ctx_t  *ctx;
    ngx_int_t                     n;

    lmcf = FUNC2(cf, ngx_http_lua_module);
    if (lmcf == NULL) {
        return NULL;
    }

    if (lmcf->shm_zones == NULL) {
        lmcf->shm_zones = FUNC4(cf->pool, sizeof(ngx_array_t));
        if (lmcf->shm_zones == NULL) {
            return NULL;
        }

        if (FUNC0(lmcf->shm_zones, cf->pool, 2,
                           sizeof(ngx_shm_zone_t *))
            != NGX_OK)
        {
            return NULL;
        }
    }

    zone = FUNC6(cf, name, (size_t) size, tag);
    if (zone == NULL) {
        return NULL;
    }

    if (zone->data) {
        ctx = (ngx_http_lua_shm_zone_ctx_t *) zone->data;
        return &ctx->zone;
    }

    n = sizeof(ngx_http_lua_shm_zone_ctx_t);

    ctx = FUNC5(cf->pool, n);
    if (ctx == NULL) {
        return NULL;
    }

    ctx->lmcf = lmcf;
    ctx->log = &cf->cycle->new_log;
    ctx->cycle = cf->cycle;

    FUNC3(&ctx->zone, zone, sizeof(ngx_shm_zone_t));

    zp = FUNC1(lmcf->shm_zones);
    if (zp == NULL) {
        return NULL;
    }

    *zp = zone;

    /* set zone init */
    zone->init = ngx_http_lua_shared_memory_init;
    zone->data = ctx;

    lmcf->requires_shm = 1;

    return &ctx->zone;
}