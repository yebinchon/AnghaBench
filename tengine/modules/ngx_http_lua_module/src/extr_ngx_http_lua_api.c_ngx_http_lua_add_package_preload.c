
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_8__ {int loader; int * package; } ;
typedef TYPE_1__ ngx_http_lua_preload_hook_t ;
struct TYPE_9__ {int * preload_hooks; int * lua; } ;
typedef TYPE_2__ ngx_http_lua_main_conf_t ;
struct TYPE_10__ {int pool; } ;
typedef TYPE_3__ ngx_conf_t ;
typedef int lua_State ;
typedef int lua_CFunction ;


 int NGX_ERROR ;
 int NGX_OK ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char const*) ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_1__* ngx_array_push (int *) ;
 TYPE_2__* ngx_http_conf_get_module_main_conf (TYPE_3__*,int ) ;
 int ngx_http_lua_module ;

ngx_int_t
ngx_http_lua_add_package_preload(ngx_conf_t *cf, const char *package,
    lua_CFunction func)
{
    lua_State *L;
    ngx_http_lua_main_conf_t *lmcf;
    ngx_http_lua_preload_hook_t *hook;

    lmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_lua_module);

    L = lmcf->lua;

    if (L) {
        lua_getglobal(L, "package");
        lua_getfield(L, -1, "preload");
        lua_pushcfunction(L, func);
        lua_setfield(L, -2, package);
        lua_pop(L, 2);
    }




    if (lmcf->preload_hooks == ((void*)0)) {
        lmcf->preload_hooks =
            ngx_array_create(cf->pool, 4,
                             sizeof(ngx_http_lua_preload_hook_t));

        if (lmcf->preload_hooks == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    hook = ngx_array_push(lmcf->preload_hooks);
    if (hook == ((void*)0)) {
        return NGX_ERROR;
    }

    hook->package = (u_char *) package;
    hook->loader = func;

    return NGX_OK;
}
