#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_17__ {scalar_t__ len; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_18__ {TYPE_5__* data; int /*<<< orphan*/  init; } ;
typedef  TYPE_3__ ngx_shm_zone_t ;
struct TYPE_19__ {int /*<<< orphan*/ * shm_zones; } ;
typedef  TYPE_4__ ngx_http_lua_fake_shm_main_conf_t ;
struct TYPE_20__ {int size; TYPE_2__ name; } ;
typedef  TYPE_5__ ngx_http_lua_fake_shm_ctx_t ;
struct TYPE_21__ {int /*<<< orphan*/  pool; TYPE_1__* args; } ;
typedef  TYPE_6__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
typedef  int /*<<< orphan*/  ngx_array_t ;
struct TYPE_16__ {TYPE_2__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__** FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  ngx_http_lua_fake_shm_init_zone ; 
 int /*<<< orphan*/  ngx_http_lua_fake_shm_module ; 
 TYPE_3__* FUNC3 (TYPE_6__*,TYPE_2__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char *
FUNC7(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_lua_fake_shm_main_conf_t   *lfsmcf = conf;

    ngx_str_t                   *value, name;
    ngx_shm_zone_t              *zone;
    ngx_shm_zone_t             **zp;
    ngx_http_lua_fake_shm_ctx_t *ctx;
    ssize_t                      size;

    if (lfsmcf->shm_zones == NULL) {
        lfsmcf->shm_zones = FUNC4(cf->pool, sizeof(ngx_array_t));
        if (lfsmcf->shm_zones == NULL) {
            return NGX_CONF_ERROR;
        }

        if (FUNC0(lfsmcf->shm_zones, cf->pool, 2,
                           sizeof(ngx_shm_zone_t *))
            != NGX_OK)
        {
            return NGX_CONF_ERROR;
        }
    }

    value = cf->args->elts;

    ctx = NULL;

    if (value[1].len == 0) {
        FUNC2(NGX_LOG_EMERG, cf, 0,
                           "invalid lua fake_shm name \"%V\"", &value[1]);
        return NGX_CONF_ERROR;
    }

    name = value[1];

    size = FUNC5(&value[2]);

    if (size <= 8191) {
        FUNC2(NGX_LOG_EMERG, cf, 0,
                           "invalid lua fake_shm size \"%V\"", &value[2]);
        return NGX_CONF_ERROR;
    }

    ctx = FUNC6(cf->pool, sizeof(ngx_http_lua_fake_shm_ctx_t));
    if (ctx == NULL) {
        return NGX_CONF_ERROR;
    }

    ctx->name = name;
    ctx->size = size;

    zone = FUNC3(cf, &name, (size_t) size,
                                          &ngx_http_lua_fake_shm_module);
    if (zone == NULL) {
        return NGX_CONF_ERROR;
    }

    if (zone->data) {
        ctx = zone->data;

        FUNC2(NGX_LOG_EMERG, cf, 0,
                           "lua_fake_shm \"%V\" is already defined as "
                           "\"%V\"", &name, &ctx->name);
        return NGX_CONF_ERROR;
    }

    zone->init = ngx_http_lua_fake_shm_init_zone;
    zone->data = ctx;

    zp = FUNC1(lfsmcf->shm_zones);
    if (zp == NULL) {
        return NGX_CONF_ERROR;
    }

    *zp = zone;

    return NGX_CONF_OK;
}