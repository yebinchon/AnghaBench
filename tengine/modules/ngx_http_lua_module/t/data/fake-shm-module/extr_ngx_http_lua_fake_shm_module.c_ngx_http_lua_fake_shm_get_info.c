
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; scalar_t__ data; } ;
struct TYPE_7__ {int size; TYPE_1__ name; } ;
struct TYPE_8__ {TYPE_2__ shm; scalar_t__ data; } ;
typedef TYPE_3__ ngx_shm_zone_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int isold; int isinit; } ;
typedef TYPE_4__ ngx_http_lua_fake_shm_ctx_t ;
typedef int lua_State ;


 int LUA_TTABLE ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushlstring (int *,char*,int ) ;
 int lua_pushnumber (int *,int ) ;
 int lua_rawgeti (int *,int,int) ;
 TYPE_3__** lua_touserdata (int *,int) ;

__attribute__((used)) static int
ngx_http_lua_fake_shm_get_info(lua_State *L)
{
    ngx_int_t n;
    ngx_shm_zone_t *zone;
    ngx_shm_zone_t **zone_udata;
    ngx_http_lua_fake_shm_ctx_t *ctx;

    n = lua_gettop(L);

    if (n != 1) {
        return luaL_error(L, "expecting exactly one arguments, "
                          "but only seen %d", n);
    }

    luaL_checktype(L, 1, LUA_TTABLE);

    lua_rawgeti(L, 1, 1);
    zone_udata = lua_touserdata(L, -1);
    lua_pop(L, 1);

    if (zone_udata == ((void*)0)) {
        return luaL_error(L, "bad \"zone\" argument");
    }

    zone = *zone_udata;

    ctx = (ngx_http_lua_fake_shm_ctx_t *) zone->data;

    lua_pushlstring(L, (char *) zone->shm.name.data, zone->shm.name.len);
    lua_pushnumber(L, zone->shm.size);
    lua_pushboolean(L, ctx->isinit);
    lua_pushboolean(L, ctx->isold);

    return 4;
}
