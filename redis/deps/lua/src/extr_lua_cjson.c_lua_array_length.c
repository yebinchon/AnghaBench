
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int strbuf_t ;
typedef int lua_State ;
struct TYPE_4__ {int encode_sparse_ratio; int encode_sparse_safe; int encode_sparse_convert; } ;
typedef TYPE_1__ json_config_t ;


 scalar_t__ LUA_TNUMBER ;
 double floor (double) ;
 int json_encode_exception (int *,TYPE_1__*,int *,int,char*) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 double lua_tonumber (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int lua_array_length(lua_State *l, json_config_t *cfg, strbuf_t *json)
{
    double k;
    int max;
    int items;

    max = 0;
    items = 0;

    lua_pushnil(l);

    while (lua_next(l, -2) != 0) {

        if (lua_type(l, -2) == LUA_TNUMBER &&
            (k = lua_tonumber(l, -2))) {

            if (floor(k) == k && k >= 1) {
                if (k > max)
                    max = k;
                items++;
                lua_pop(l, 1);
                continue;
            }
        }


        lua_pop(l, 2);
        return -1;
    }


    if (cfg->encode_sparse_ratio > 0 &&
        max > items * cfg->encode_sparse_ratio &&
        max > cfg->encode_sparse_safe) {
        if (!cfg->encode_sparse_convert)
            json_encode_exception(l, cfg, json, -1, "excessively sparse array");

        return -1;
    }

    return max;
}
