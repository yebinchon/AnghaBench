
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {int pool; TYPE_1__* request_body; scalar_t__ discard_body; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_10__ {TYPE_2__* buf; struct TYPE_10__* next; } ;
typedef TYPE_4__ ngx_chain_t ;
typedef int lua_State ;
struct TYPE_8__ {scalar_t__ pos; scalar_t__ last; } ;
struct TYPE_7__ {TYPE_4__* bufs; scalar_t__ temp_file; } ;


 int NGX_HTTP_LUA_MAX_ARGS ;
 int dd (char*,int,...) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int * ngx_copy (int *,scalar_t__,scalar_t__) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_3__*) ;
 TYPE_3__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_parse_args (int *,int *,int *,int) ;
 int * ngx_palloc (int ,size_t) ;
 int ngx_pfree (int ,int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_get_post_args(lua_State *L)
{
    ngx_http_request_t *r;
    u_char *buf;
    int retval;
    size_t len;
    ngx_chain_t *cl;
    u_char *p;
    u_char *last;
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

    if (r->discard_body) {
        lua_createtable(L, 0, 0);
        return 1;
    }

    if (r->request_body == ((void*)0)) {
        return luaL_error(L, "no request body found; "
                          "maybe you should turn on lua_need_request_body?");
    }

    if (r->request_body->temp_file) {
        lua_pushnil(L);
        lua_pushliteral(L, "request body in temp file not supported");
        return 2;
    }

    if (r->request_body->bufs == ((void*)0)) {
        lua_createtable(L, 0, 0);
        return 1;
    }




    len = 0;
    for (cl = r->request_body->bufs; cl; cl = cl->next) {
        len += cl->buf->last - cl->buf->pos;
    }

    dd("post body length: %d", (int) len);

    if (len == 0) {
        lua_createtable(L, 0, 0);
        return 1;
    }

    buf = ngx_palloc(r->pool, len);
    if (buf == ((void*)0)) {
        return luaL_error(L, "no memory");
    }

    lua_createtable(L, 0, 4);

    p = buf;
    for (cl = r->request_body->bufs; cl; cl = cl->next) {
        p = ngx_copy(p, cl->buf->pos, cl->buf->last - cl->buf->pos);
    }

    dd("post body: %.*s", (int) len, buf);

    last = buf + len;

    retval = ngx_http_lua_parse_args(L, buf, last, max);

    ngx_pfree(r->pool, buf);

    return retval;
}
