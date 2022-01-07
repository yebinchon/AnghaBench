
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_12__ {int len; scalar_t__ data; } ;
struct TYPE_13__ {TYPE_2__ name; } ;
struct TYPE_14__ {TYPE_3__ shm; } ;
typedef TYPE_4__ ngx_shm_zone_t ;
struct TYPE_15__ {TYPE_1__* shm_zones; } ;
typedef TYPE_5__ ngx_http_lua_fake_shm_main_conf_t ;
struct TYPE_16__ {TYPE_5__** main_conf; } ;
typedef TYPE_6__ ngx_http_conf_ctx_t ;
struct TYPE_17__ {scalar_t__* conf_ctx; } ;
typedef TYPE_7__ ngx_cycle_t ;
typedef int lua_State ;
struct TYPE_19__ {size_t ctx_index; } ;
struct TYPE_18__ {size_t index; } ;
struct TYPE_11__ {int nelts; TYPE_4__** elts; } ;


 int lua_createtable (int *,int,int) ;
 int lua_newtable (int *) ;
 TYPE_4__** lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlstring (int *,char*,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawset (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 scalar_t__ ngx_cycle ;
 int ngx_http_lua_fake_shm_get_info ;
 TYPE_9__ ngx_http_lua_fake_shm_module ;
 TYPE_8__ ngx_http_module ;

__attribute__((used)) static int
ngx_http_lua_fake_shm_preload(lua_State *L)
{
    ngx_http_lua_fake_shm_main_conf_t *lfsmcf;
    ngx_http_conf_ctx_t *hmcf_ctx;
    ngx_cycle_t *cycle;

    ngx_uint_t i;
    ngx_shm_zone_t **zone;
    ngx_shm_zone_t **zone_udata;

    cycle = (ngx_cycle_t *) ngx_cycle;

    hmcf_ctx = (ngx_http_conf_ctx_t *) cycle->conf_ctx[ngx_http_module.index];
    lfsmcf = hmcf_ctx->main_conf[ngx_http_lua_fake_shm_module.ctx_index];

    if (lfsmcf->shm_zones != ((void*)0)) {
        lua_createtable(L, 0, lfsmcf->shm_zones->nelts );

        lua_createtable(L, 0 , 2 );

        lua_pushcfunction(L, ngx_http_lua_fake_shm_get_info);
        lua_setfield(L, -2, "get_info");

        lua_pushvalue(L, -1);
        lua_setfield(L, -2, "__index");

        zone = lfsmcf->shm_zones->elts;

        for (i = 0; i < lfsmcf->shm_zones->nelts; i++) {
            lua_pushlstring(L, (char *) zone[i]->shm.name.data,
                            zone[i]->shm.name.len);



            lua_createtable(L, 1 , 0 );

            zone_udata = lua_newuserdata(L, sizeof(ngx_shm_zone_t *));

            *zone_udata = zone[i];
            lua_rawseti(L, -2, 1);
            lua_pushvalue(L, -3);
            lua_setmetatable(L, -2);
            lua_rawset(L, -4);
        }

        lua_pop(L, 1);

    } else {
        lua_newtable(L);
    }

    return 1;
}
