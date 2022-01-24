#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; TYPE_1__ name; } ;
struct TYPE_8__ {TYPE_2__ shm; scalar_t__ data; } ;
typedef  TYPE_3__ ngx_shm_zone_t ;
typedef  int ngx_int_t ;
struct TYPE_9__ {int /*<<< orphan*/  isold; int /*<<< orphan*/  isinit; } ;
typedef  TYPE_4__ ngx_http_lua_fake_shm_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_3__** FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(lua_State *L)
{
    ngx_int_t                         n;
    ngx_shm_zone_t                   *zone;
    ngx_shm_zone_t                  **zone_udata;
    ngx_http_lua_fake_shm_ctx_t      *ctx;

    n = FUNC2(L);

    if (n != 1) {
        return FUNC1(L, "expecting exactly one arguments, "
                          "but only seen %d", n);
    }

    FUNC0(L, 1, LUA_TTABLE);

    FUNC7(L, 1, 1);
    zone_udata = FUNC8(L, -1);
    FUNC3(L, 1);

    if (zone_udata == NULL) {
        return FUNC1(L, "bad \"zone\" argument");
    }

    zone = *zone_udata;

    ctx = (ngx_http_lua_fake_shm_ctx_t *) zone->data;

    FUNC5(L, (char *) zone->shm.name.data, zone->shm.name.len);
    FUNC6(L, zone->shm.size);
    FUNC4(L, ctx->isinit);
    FUNC4(L, ctx->isold);

    return 4;
}