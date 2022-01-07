
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strbuf_t ;
typedef int lua_State ;
typedef int json_config_t ;
 int json_append_array (int *,int *,int,int *,int) ;
 int json_append_number (int *,int *,int *,int) ;
 int json_append_object (int *,int *,int,int *) ;
 int json_append_string (int *,int *,int) ;
 int json_check_encode_depth (int *,int *,int,int *) ;
 int json_encode_exception (int *,int *,int *,int,char*) ;
 int lua_array_length (int *,int *,int *) ;
 int lua_toboolean (int *,int) ;
 int * lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 int strbuf_append_mem (int *,char*,int) ;

__attribute__((used)) static void json_append_data(lua_State *l, json_config_t *cfg,
                             int current_depth, strbuf_t *json)
{
    int len;

    switch (lua_type(l, -1)) {
    case 129:
        json_append_string(l, json, -1);
        break;
    case 130:
        json_append_number(l, cfg, json, -1);
        break;
    case 133:
        if (lua_toboolean(l, -1))
            strbuf_append_mem(json, "true", 4);
        else
            strbuf_append_mem(json, "false", 5);
        break;
    case 128:
        current_depth++;
        json_check_encode_depth(l, cfg, current_depth, json);
        len = lua_array_length(l, cfg, json);
        if (len > 0)
            json_append_array(l, cfg, current_depth, json, len);
        else
            json_append_object(l, cfg, current_depth, json);
        break;
    case 131:
        strbuf_append_mem(json, "null", 4);
        break;
    case 132:
        if (lua_touserdata(l, -1) == ((void*)0)) {
            strbuf_append_mem(json, "null", 4);
            break;
        }
    default:


        json_encode_exception(l, cfg, json, -1, "type not supported");

    }
}
