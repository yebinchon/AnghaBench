
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strbuf_t ;
typedef int lua_State ;
typedef int json_config_t ;


 int LUA_TNUMBER ;
 int LUA_TSTRING ;
 int json_append_data (int *,int *,int,int *) ;
 int json_append_number (int *,int *,int *,int) ;
 int json_append_string (int *,int *,int) ;
 int json_encode_exception (int *,int *,int *,int,char*) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_type (int *,int) ;
 int strbuf_append_char (int *,char) ;
 int strbuf_append_mem (int *,char*,int) ;

__attribute__((used)) static void json_append_object(lua_State *l, json_config_t *cfg,
                               int current_depth, strbuf_t *json)
{
    int comma, keytype;


    strbuf_append_char(json, '{');

    lua_pushnil(l);

    comma = 0;
    while (lua_next(l, -2) != 0) {
        if (comma)
            strbuf_append_char(json, ',');
        else
            comma = 1;


        keytype = lua_type(l, -2);
        if (keytype == LUA_TNUMBER) {
            strbuf_append_char(json, '"');
            json_append_number(l, cfg, json, -2);
            strbuf_append_mem(json, "\":", 2);
        } else if (keytype == LUA_TSTRING) {
            json_append_string(l, json, -2);
            strbuf_append_char(json, ':');
        } else {
            json_encode_exception(l, cfg, json, -2,
                                  "table key must be a number or string");

        }


        json_append_data(l, cfg, current_depth, json);
        lua_pop(l, 1);

    }

    strbuf_append_char(json, '}');
}
