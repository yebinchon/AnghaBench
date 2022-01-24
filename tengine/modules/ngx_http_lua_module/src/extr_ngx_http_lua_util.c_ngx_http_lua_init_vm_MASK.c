#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_12__ {TYPE_3__* data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_2__ ngx_pool_cleanup_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
struct TYPE_13__ {int count; int /*<<< orphan*/ * vm; } ;
typedef  TYPE_3__ ngx_http_lua_vm_state_t ;
struct TYPE_14__ {scalar_t__ package; int /*<<< orphan*/  loader; } ;
typedef  TYPE_4__ ngx_http_lua_preload_hook_t ;
struct TYPE_15__ {TYPE_1__* preload_hooks; TYPE_2__* vm_cleanup; } ;
typedef  TYPE_5__ ngx_http_lua_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_cycle_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_11__ {size_t nelts; TYPE_4__* elts; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_cleanup_vm ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

lua_State *
FUNC11(lua_State *parent_vm, ngx_cycle_t *cycle,
    ngx_pool_t *pool, ngx_http_lua_main_conf_t *lmcf, ngx_log_t *log,
    ngx_pool_cleanup_t **pcln)
{
    lua_State                       *L;
    ngx_uint_t                       i;
    ngx_pool_cleanup_t              *cln;
    ngx_http_lua_preload_hook_t     *hook;
    ngx_http_lua_vm_state_t         *state;

    cln = FUNC10(pool, 0);
    if (cln == NULL) {
        return NULL;
    }

    /* create new Lua VM instance */
    L = FUNC7(parent_vm, cycle, lmcf, log);
    if (L == NULL) {
        return NULL;
    }

    FUNC9(NGX_LOG_DEBUG_HTTP, log, 0, "lua initialize the "
                   "global Lua VM %p", L);

    /* register cleanup handler for Lua VM */
    cln->handler = ngx_http_lua_cleanup_vm;

    state = FUNC6(sizeof(ngx_http_lua_vm_state_t), log);
    if (state == NULL) {
        return NULL;
    }
    state->vm = L;
    state->count = 1;

    cln->data = state;

    if (lmcf->vm_cleanup == NULL) {
        /* this assignment will happen only once,
         * and also only for the main Lua VM */
        lmcf->vm_cleanup = cln;
    }

    if (pcln) {
        *pcln = cln;
    }

#ifdef OPENRESTY_LUAJIT
    /* load FFI library first since cdata needs it */
    luaopen_ffi(L);
#endif

    if (lmcf->preload_hooks) {

        /* register the 3rd-party module's preload hooks */

        FUNC1(L, "package");
        FUNC0(L, -1, "preload");

        hook = lmcf->preload_hooks->elts;

        for (i = 0; i < lmcf->preload_hooks->nelts; i++) {

            FUNC8(L, hook[i].package);

            FUNC3(L, hook[i].loader);
            FUNC4(L, -2, (char *) hook[i].package);
        }

        FUNC2(L, 2);
    }

    return L;
}