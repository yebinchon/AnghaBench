
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_http_request_t ;
struct TYPE_5__ {TYPE_2__* body_filter_chain; } ;
typedef TYPE_1__ ngx_http_lua_main_conf_t ;
struct TYPE_6__ {TYPE_3__* buf; struct TYPE_6__* next; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_7__ {size_t pos; size_t last; scalar_t__ last_in_chain; scalar_t__ last_buf; } ;
typedef TYPE_3__ ngx_buf_t ;
typedef int lua_State ;


 int dd (char*,...) ;
 int luaL_checkint (int *,int) ;
 scalar_t__ lua_newuserdata (int *,size_t) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char*,size_t) ;
 int lua_pushnil (int *) ;
 int * ngx_copy (int *,size_t,size_t) ;
 TYPE_1__* ngx_http_get_module_main_conf (int *,int ) ;
 int ngx_http_lua_module ;

int
ngx_http_lua_body_filter_param_get(lua_State *L, ngx_http_request_t *r)
{
    u_char *data, *p;
    size_t size;
    ngx_chain_t *cl;
    ngx_buf_t *b;
    int idx;
    ngx_chain_t *in;

    ngx_http_lua_main_conf_t *lmcf;

    idx = luaL_checkint(L, 2);

    dd("index: %d", idx);

    if (idx != 1 && idx != 2) {
        lua_pushnil(L);
        return 1;
    }

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);
    in = lmcf->body_filter_chain;

    if (idx == 2) {


        for (cl = in; cl; cl = cl->next) {
            if (cl->buf->last_buf || cl->buf->last_in_chain) {
                lua_pushboolean(L, 1);
                return 1;
            }
        }

        lua_pushboolean(L, 0);
        return 1;
    }



    size = 0;

    if (in == ((void*)0)) {

        lua_pushliteral(L, "");
        return 1;
    }

    if (in->next == ((void*)0)) {

        dd("seen only single buffer");

        b = in->buf;
        lua_pushlstring(L, (char *) b->pos, b->last - b->pos);
        return 1;
    }

    dd("seen multiple buffers");

    for (cl = in; cl; cl = cl->next) {
        b = cl->buf;

        size += b->last - b->pos;

        if (b->last_buf || b->last_in_chain) {
            break;
        }
    }

    data = (u_char *) lua_newuserdata(L, size);

    for (p = data, cl = in; cl; cl = cl->next) {
        b = cl->buf;
        p = ngx_copy(p, b->pos, b->last - b->pos);

        if (b->last_buf || b->last_in_chain) {
            break;
        }
    }

    lua_pushlstring(L, (char *) data, size);
    return 1;
}
