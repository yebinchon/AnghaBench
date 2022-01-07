
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
typedef int lua_State ;




 int NGX_ERROR ;
 int NGX_HTTP_LUA_FILE_KEY_LEN ;
 int NGX_HTTP_LUA_FILE_TAG ;
 int NGX_HTTP_LUA_FILE_TAG_LEN ;
 int NGX_HTTP_NOT_FOUND ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int dd (char*,...) ;
 int lua_gettop (int *) ;
 int lua_isstring (int *,int) ;
 int lua_settop (int *,int) ;
 char* lua_tostring (int *,int) ;
 char* ngx_copy (char*,int ,int ) ;
 int ngx_http_lua_cache_load_code (int *,int *,char*) ;
 int ngx_http_lua_cache_store_code (int *,char*) ;
 int ngx_http_lua_clfactory_loadfile (int *,char*) ;
 char* ngx_http_lua_digest_hex (char*,char const*,int ) ;
 int ngx_log_debug1 (int ,int *,int ,char*,char const*) ;
 int ngx_log_error (int ,int *,int ,char*,char const*,char const*) ;
 int ngx_strlen (char const*) ;

ngx_int_t
ngx_http_lua_cache_loadfile(ngx_log_t *log, lua_State *L,
    const u_char *script, const u_char *cache_key)
{
    int n;
    ngx_int_t rc, errcode = NGX_ERROR;
    u_char *p;
    u_char buf[NGX_HTTP_LUA_FILE_KEY_LEN + 1];
    const char *err = ((void*)0);

    n = lua_gettop(L);


    if (cache_key == ((void*)0)) {
        dd("CACHE file key not pre-calculated...calculating");
        p = ngx_copy(buf, NGX_HTTP_LUA_FILE_TAG, NGX_HTTP_LUA_FILE_TAG_LEN);

        p = ngx_http_lua_digest_hex(p, script, ngx_strlen(script));

        *p = '\0';
        cache_key = buf;

    } else {
        dd("CACHE file key already pre-calculated");
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0,
                   "looking up Lua code cache with key '%s'", cache_key);

    rc = ngx_http_lua_cache_load_code(log, L, (char *) cache_key);
    if (rc == NGX_OK) {

        dd("Code cache hit! cache key='%s', stack top=%d, file path='%s'",
           cache_key, lua_gettop(L), script);
        return NGX_OK;
    }

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }



    dd("Code cache missed! cache key='%s', stack top=%d, file path='%s'",
       cache_key, lua_gettop(L), script);


    rc = ngx_http_lua_clfactory_loadfile(L, (char *) script);

    dd("loadfile returns %d (%d)", (int) rc, 129);

    if (rc != 0) {

        switch (rc) {
        case 128:
            err = "memory allocation error";
            break;

        case 129:
            errcode = NGX_HTTP_NOT_FOUND;


        default:
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
                  "failed to load external Lua file \"%s\": %s", script, err);

    lua_settop(L, n);
    return errcode;
}
