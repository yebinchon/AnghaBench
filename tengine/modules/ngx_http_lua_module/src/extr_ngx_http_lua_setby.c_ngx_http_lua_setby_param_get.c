
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
typedef int ngx_http_request_t ;
struct TYPE_5__ {int setby_nargs; TYPE_1__* setby_args; } ;
typedef TYPE_2__ ngx_http_lua_main_conf_t ;
typedef int lua_State ;


 int luaL_checkint (int *,int) ;
 int lua_pushlstring (int *,char const*,int ) ;
 int lua_pushnil (int *) ;
 TYPE_2__* ngx_http_get_module_main_conf (int *,int ) ;
 int ngx_http_lua_module ;

int
ngx_http_lua_setby_param_get(lua_State *L, ngx_http_request_t *r)
{
    int idx;
    int n;

    ngx_http_variable_value_t *v;
    ngx_http_lua_main_conf_t *lmcf;

    idx = luaL_checkint(L, 2);
    idx--;

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);


    n = lmcf->setby_nargs;


    v = lmcf->setby_args;

    if (idx < 0 || idx > n - 1) {
        lua_pushnil(L);

    } else {
        lua_pushlstring(L, (const char *) (v[idx].data), v[idx].len);
    }

    return 1;
}
