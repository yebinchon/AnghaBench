
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {scalar_t__ current_depth; scalar_t__ data; scalar_t__ ptr; int tmp; TYPE_1__* cfg; } ;
typedef TYPE_2__ json_parse_t ;
struct TYPE_4__ {scalar_t__ decode_max_depth; } ;


 int luaL_error (int *,char*,scalar_t__,scalar_t__) ;
 scalar_t__ lua_checkstack (int *,int) ;
 int strbuf_free (int ) ;

__attribute__((used)) static void json_decode_descend(lua_State *l, json_parse_t *json, int slots)
{
    json->current_depth++;

    if (json->current_depth <= json->cfg->decode_max_depth &&
        lua_checkstack(l, slots)) {
        return;
    }

    strbuf_free(json->tmp);
    luaL_error(l, "Found too many nested data structures (%d) at character %d",
        json->current_depth, json->ptr - json->data);
}
