
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_pool_t ;
struct TYPE_12__ {TYPE_3__* data; int handler; } ;
typedef TYPE_2__ ngx_pool_cleanup_t ;
typedef int ngx_log_t ;
struct TYPE_13__ {int count; int * vm; } ;
typedef TYPE_3__ ngx_http_lua_vm_state_t ;
struct TYPE_14__ {scalar_t__ package; int loader; } ;
typedef TYPE_4__ ngx_http_lua_preload_hook_t ;
struct TYPE_15__ {TYPE_1__* preload_hooks; TYPE_2__* vm_cleanup; } ;
typedef TYPE_5__ ngx_http_lua_main_conf_t ;
typedef int ngx_cycle_t ;
typedef int lua_State ;
struct TYPE_11__ {size_t nelts; TYPE_4__* elts; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int luaopen_ffi (int *) ;
 TYPE_3__* ngx_alloc (int,int *) ;
 int ngx_http_lua_cleanup_vm ;
 int * ngx_http_lua_new_state (int *,int *,TYPE_5__*,int *) ;
 int ngx_http_lua_probe_register_preload_package (int *,scalar_t__) ;
 int ngx_log_debug1 (int ,int *,int ,char*,int *) ;
 TYPE_2__* ngx_pool_cleanup_add (int *,int ) ;

lua_State *
ngx_http_lua_init_vm(lua_State *parent_vm, ngx_cycle_t *cycle,
    ngx_pool_t *pool, ngx_http_lua_main_conf_t *lmcf, ngx_log_t *log,
    ngx_pool_cleanup_t **pcln)
{
    lua_State *L;
    ngx_uint_t i;
    ngx_pool_cleanup_t *cln;
    ngx_http_lua_preload_hook_t *hook;
    ngx_http_lua_vm_state_t *state;

    cln = ngx_pool_cleanup_add(pool, 0);
    if (cln == ((void*)0)) {
        return ((void*)0);
    }


    L = ngx_http_lua_new_state(parent_vm, cycle, lmcf, log);
    if (L == ((void*)0)) {
        return ((void*)0);
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0, "lua initialize the "
                   "global Lua VM %p", L);


    cln->handler = ngx_http_lua_cleanup_vm;

    state = ngx_alloc(sizeof(ngx_http_lua_vm_state_t), log);
    if (state == ((void*)0)) {
        return ((void*)0);
    }
    state->vm = L;
    state->count = 1;

    cln->data = state;

    if (lmcf->vm_cleanup == ((void*)0)) {


        lmcf->vm_cleanup = cln;
    }

    if (pcln) {
        *pcln = cln;
    }






    if (lmcf->preload_hooks) {



        lua_getglobal(L, "package");
        lua_getfield(L, -1, "preload");

        hook = lmcf->preload_hooks->elts;

        for (i = 0; i < lmcf->preload_hooks->nelts; i++) {

            ngx_http_lua_probe_register_preload_package(L, hook[i].package);

            lua_pushcfunction(L, hook[i].loader);
            lua_setfield(L, -2, (char *) hook[i].package);
        }

        lua_pop(L, 2);
    }

    return L;
}
