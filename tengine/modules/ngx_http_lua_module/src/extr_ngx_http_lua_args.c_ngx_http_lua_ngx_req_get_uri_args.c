
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {scalar_t__ len; int data; } ;
struct TYPE_6__ {int pool; TYPE_1__ args; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int lua_State ;


 int NGX_HTTP_LUA_MAX_ARGS ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_2__*) ;
 TYPE_2__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_parse_args (int *,int *,int *,int) ;
 int ngx_memcpy (int *,int ,scalar_t__) ;
 int * ngx_palloc (int ,scalar_t__) ;
 int ngx_pfree (int ,int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_get_uri_args(lua_State *L)
{
    ngx_http_request_t *r;
    u_char *buf;
    u_char *last;
    int retval;
    int n;
    int max;

    n = lua_gettop(L);

    if (n != 0 && n != 1) {
        return luaL_error(L, "expecting 0 or 1 arguments but seen %d", n);
    }

    if (n == 1) {
        max = luaL_checkinteger(L, 1);
        lua_pop(L, 1);

    } else {
        max = NGX_HTTP_LUA_MAX_ARGS;
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ngx_http_lua_check_fake_request(L, r);

    if (r->args.len == 0) {
        lua_createtable(L, 0, 0);
        return 1;
    }




    buf = ngx_palloc(r->pool, r->args.len);
    if (buf == ((void*)0)) {
        return luaL_error(L, "no memory");
    }

    lua_createtable(L, 0, 4);

    ngx_memcpy(buf, r->args.data, r->args.len);

    last = buf + r->args.len;

    retval = ngx_http_lua_parse_args(L, buf, last, max);

    ngx_pfree(r->pool, buf);

    return retval;
}
