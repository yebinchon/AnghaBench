
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
typedef int lua_State ;


 scalar_t__ LUA_ERRMEM ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int dd (char*,int const*,int,int,int const*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_settop (int *,int) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ ngx_http_lua_cache_load_code (int *,int *,char*) ;
 scalar_t__ ngx_http_lua_cache_store_code (int *,char*) ;
 scalar_t__ ngx_http_lua_clfactory_loadbuffer (int *,char*,size_t,char const*) ;
 int ngx_log_debug1 (int ,int *,int ,char*,int const*) ;
 int ngx_log_error (int ,int *,int ,char*,char const*) ;

ngx_int_t
ngx_http_lua_cache_loadbuffer(ngx_log_t *log, lua_State *L,
    const u_char *src, size_t src_len, const u_char *cache_key,
    const char *name)
{
    int n;
    ngx_int_t rc;
    const char *err = ((void*)0);

    n = lua_gettop(L);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0,
                   "looking up Lua code cache with key '%s'", cache_key);

    rc = ngx_http_lua_cache_load_code(log, L, (char *) cache_key);
    if (rc == NGX_OK) {

        dd("Code cache hit! cache key='%s', stack top=%d, script='%.*s'",
           cache_key, lua_gettop(L), (int) src_len, src);
        return NGX_OK;
    }

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }



    dd("Code cache missed! cache key='%s', stack top=%d, script='%.*s'",
       cache_key, lua_gettop(L), (int) src_len, src);


    rc = ngx_http_lua_clfactory_loadbuffer(L, (char *) src, src_len, name);

    if (rc != 0) {

        if (rc == LUA_ERRMEM) {
            err = "memory allocation error";

        } else {
            if (lua_isstring(L, -1)) {
                err = lua_tostring(L, -1);

            } else {
                err = "unknown error";
            }
        }

        goto error;
    }



    rc = ngx_http_lua_cache_store_code(L, (char *) cache_key);
    if (rc != NGX_OK) {
        err = "fail to generate new closure from the closure factory";
        goto error;
    }

    return NGX_OK;

error:

    ngx_log_error(NGX_LOG_ERR, log, 0,
                  "failed to load inlined Lua code: %s", err);
    lua_settop(L, n);
    return NGX_ERROR;
}
