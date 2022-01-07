
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strbuf_t ;
typedef int lua_State ;
struct TYPE_3__ {int encode_max_depth; int encode_keep_buffer; } ;
typedef TYPE_1__ json_config_t ;


 int luaL_error (int *,char*,int) ;
 scalar_t__ lua_checkstack (int *,int) ;
 int strbuf_free (int *) ;

__attribute__((used)) static void json_check_encode_depth(lua_State *l, json_config_t *cfg,
                                    int current_depth, strbuf_t *json)
{
    if (current_depth <= cfg->encode_max_depth && lua_checkstack(l, 3))
        return;

    if (!cfg->encode_keep_buffer)
        strbuf_free(json);

    luaL_error(l, "Cannot serialise, excessive nesting (%d)",
               current_depth);
}
