
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_5__ {char* data; size_t len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_http_request_t ;
struct TYPE_6__ {scalar_t__ transform_underscores_in_resp_headers; } ;
typedef TYPE_2__ ngx_http_lua_loc_conf_t ;
typedef int ngx_http_lua_ctx_t ;
typedef int lua_State ;


 int dd (char*,int,char*,int) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,size_t) ;
 int * memchr (char*,char,size_t) ;
 int * ngx_http_get_module_ctx (int *,int ) ;
 TYPE_2__* ngx_http_get_module_loc_conf (int *,int ) ;
 int ngx_http_lua_check_fake_request (int *,int *) ;
 int ngx_http_lua_get_output_header (int *,int *,int *,TYPE_1__*) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;

__attribute__((used)) static int
ngx_http_lua_ngx_header_get(lua_State *L)
{
    ngx_http_request_t *r;
    u_char *p, c;
    ngx_str_t key;
    ngx_uint_t i;
    size_t len;
    ngx_http_lua_loc_conf_t *llcf;
    ngx_http_lua_ctx_t *ctx;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no ctx found");
    }

    ngx_http_lua_check_fake_request(L, r);


    p = (u_char *) luaL_checklstring(L, 2, &len);

    dd("key: %.*s, len %d", (int) len, p, (int) len);

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);
    if (llcf->transform_underscores_in_resp_headers
        && memchr(p, '_', len) != ((void*)0))
    {
        key.data = (u_char *) lua_newuserdata(L, len);
        if (key.data == ((void*)0)) {
            return luaL_error(L, "no memory");
        }


        for (i = 0; i < len; i++) {
            c = p[i];
            if (c == '_') {
                c = '-';
            }
            key.data[i] = c;
        }

    } else {
        key.data = p;
    }

    key.len = len;

    return ngx_http_lua_get_output_header(L, r, ctx, &key);
}
