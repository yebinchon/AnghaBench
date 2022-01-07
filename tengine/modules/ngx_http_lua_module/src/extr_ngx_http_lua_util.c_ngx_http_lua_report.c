
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int ngx_int_t ;
typedef int lua_State ;


 int LUA_GCCOLLECT ;
 int NGX_ERROR ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int lua_gc (int *,int ,int ) ;
 int lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 char* lua_tostring (int *,int) ;
 int ngx_log_error (int ,int *,int ,char*,char const*,char const*) ;

ngx_int_t
ngx_http_lua_report(ngx_log_t *log, lua_State *L, int status,
    const char *prefix)
{
    const char *msg;

    if (status && !lua_isnil(L, -1)) {
        msg = lua_tostring(L, -1);
        if (msg == ((void*)0)) {
            msg = "unknown error";
        }

        ngx_log_error(NGX_LOG_ERR, log, 0, "%s error: %s", prefix, msg);
        lua_pop(L, 1);
    }


    lua_gc(L, LUA_GCCOLLECT, 0);

    return status == 0 ? NGX_OK : NGX_ERROR;
}
