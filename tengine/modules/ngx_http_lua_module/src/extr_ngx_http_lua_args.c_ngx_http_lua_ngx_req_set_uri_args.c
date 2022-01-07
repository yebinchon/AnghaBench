
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {size_t len; int * data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_8__ {size_t len; int * data; } ;
struct TYPE_10__ {scalar_t__ valid_unparsed_uri; TYPE_1__ args; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
typedef int lua_State ;





 int dd (char*,int,int *) ;
 int luaL_argerror (int *,int,char const*) ;
 int luaL_error (int *,char*,...) ;
 int luaL_typename (int *,int) ;
 int lua_gettop (int *) ;
 char* lua_pushfstring (int *,char*,int ) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_3__*) ;
 TYPE_3__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_process_args_option (TYPE_3__*,int *,int,TYPE_2__*) ;
 int ngx_memcpy (int *,int *,size_t) ;
 int * ngx_palloc (int ,size_t) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_set_uri_args(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_str_t args;
    const char *msg;
    size_t len;
    u_char *p;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting 1 argument but seen %d",
                          lua_gettop(L));
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ngx_http_lua_check_fake_request(L, r);

    switch (lua_type(L, 1)) {
    case 130:
    case 129:
        p = (u_char *) lua_tolstring(L, 1, &len);

        args.data = ngx_palloc(r->pool, len);
        if (args.data == ((void*)0)) {
            return luaL_error(L, "no memory");
        }

        ngx_memcpy(args.data, p, len);

        args.len = len;
        break;

    case 128:
        ngx_http_lua_process_args_option(r, L, 1, &args);

        dd("args: %.*s", (int) args.len, args.data);

        break;

    default:
        msg = lua_pushfstring(L, "string, number, or table expected, "
                              "but got %s", luaL_typename(L, 2));
        return luaL_argerror(L, 1, msg);
    }

    dd("args: %.*s", (int) args.len, args.data);

    r->args.data = args.data;
    r->args.len = args.len;

    r->valid_unparsed_uri = 0;

    return 0;
}
