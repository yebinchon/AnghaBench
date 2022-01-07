
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_3__ {int * body_filter_chain; } ;
typedef TYPE_1__ ngx_http_lua_main_conf_t ;
typedef int ngx_chain_t ;
typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 int lua_setfenv (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 TYPE_1__* ngx_http_get_module_main_conf (int *,int ) ;
 int ngx_http_lua_create_new_globals_table (int *,int ,int) ;
 int ngx_http_lua_get_globals_table (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_set_req (int *,int *) ;

__attribute__((used)) static void
ngx_http_lua_body_filter_by_lua_env(lua_State *L, ngx_http_request_t *r,
    ngx_chain_t *in)
{
    ngx_http_lua_main_conf_t *lmcf;

    ngx_http_lua_set_req(L, r);

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);
    lmcf->body_filter_chain = in;
    ngx_http_lua_create_new_globals_table(L, 0 , 1 );


    lua_createtable(L, 0, 1 );

    ngx_http_lua_get_globals_table(L);
    lua_setfield(L, -2, "__index");
    lua_setmetatable(L, -2);


    lua_setfenv(L, -2);

}
