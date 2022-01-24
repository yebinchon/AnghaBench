#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_12__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_13__ {TYPE_2__ name; } ;
struct TYPE_14__ {TYPE_3__ shm; } ;
typedef  TYPE_4__ ngx_shm_zone_t ;
struct TYPE_15__ {TYPE_1__* shm_zones; } ;
typedef  TYPE_5__ ngx_http_lua_fake_shm_main_conf_t ;
struct TYPE_16__ {TYPE_5__** main_conf; } ;
typedef  TYPE_6__ ngx_http_conf_ctx_t ;
struct TYPE_17__ {scalar_t__* conf_ctx; } ;
typedef  TYPE_7__ ngx_cycle_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_19__ {size_t ctx_index; } ;
struct TYPE_18__ {size_t index; } ;
struct TYPE_11__ {int nelts; TYPE_4__** elts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__** FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ ngx_cycle ; 
 int /*<<< orphan*/  ngx_http_lua_fake_shm_get_info ; 
 TYPE_9__ ngx_http_lua_fake_shm_module ; 
 TYPE_8__ ngx_http_module ; 

__attribute__((used)) static int
FUNC11(lua_State *L)
{
    ngx_http_lua_fake_shm_main_conf_t *lfsmcf;
    ngx_http_conf_ctx_t               *hmcf_ctx;
    ngx_cycle_t                       *cycle;

    ngx_uint_t                   i;
    ngx_shm_zone_t             **zone;
    ngx_shm_zone_t             **zone_udata;

    cycle = (ngx_cycle_t *) ngx_cycle;

    hmcf_ctx = (ngx_http_conf_ctx_t *) cycle->conf_ctx[ngx_http_module.index];
    lfsmcf = hmcf_ctx->main_conf[ngx_http_lua_fake_shm_module.ctx_index];

    if (lfsmcf->shm_zones != NULL) {
        FUNC0(L, 0, lfsmcf->shm_zones->nelts /* nrec */);

        FUNC0(L, 0 /* narr */, 2 /* nrec */); /* shared mt */

        FUNC4(L, ngx_http_lua_fake_shm_get_info);
        FUNC9(L, -2, "get_info");

        FUNC6(L, -1); /* shared mt mt */
        FUNC9(L, -2, "__index"); /* shared mt */

        zone = lfsmcf->shm_zones->elts;

        for (i = 0; i < lfsmcf->shm_zones->nelts; i++) {
            FUNC5(L, (char *) zone[i]->shm.name.data,
                            zone[i]->shm.name.len);

            /* shared mt key */

            FUNC0(L, 1 /* narr */, 0 /* nrec */);
                /* table of zone[i] */
            zone_udata = FUNC2(L, sizeof(ngx_shm_zone_t *));
                /* shared mt key ud */
            *zone_udata = zone[i];
            FUNC8(L, -2, 1); /* {zone[i]} */
            FUNC6(L, -3); /* shared mt key ud mt */
            FUNC10(L, -2); /* shared mt key ud */
            FUNC7(L, -4); /* shared mt */
        }

        FUNC3(L, 1); /* shared */

    } else {
        FUNC1(L);    /* ngx.shared */
    }

    return 1;
}