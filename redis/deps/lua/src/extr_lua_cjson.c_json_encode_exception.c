
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strbuf_t ;
typedef int lua_State ;
struct TYPE_3__ {int encode_keep_buffer; } ;
typedef TYPE_1__ json_config_t ;


 int luaL_error (int *,char*,int ,char const*) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int ) ;
 int strbuf_free (int *) ;

__attribute__((used)) static void json_encode_exception(lua_State *l, json_config_t *cfg, strbuf_t *json, int lindex,
                                  const char *reason)
{
    if (!cfg->encode_keep_buffer)
        strbuf_free(json);
    luaL_error(l, "Cannot serialise %s: %s",
                  lua_typename(l, lua_type(l, lindex)), reason);
}
