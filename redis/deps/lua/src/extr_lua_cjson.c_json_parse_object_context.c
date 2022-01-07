
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int string; } ;
struct TYPE_7__ {scalar_t__ type; int string_len; TYPE_1__ value; } ;
typedef TYPE_2__ json_token_t ;
typedef int json_parse_t ;


 scalar_t__ T_COLON ;
 scalar_t__ T_COMMA ;
 scalar_t__ T_OBJ_END ;
 scalar_t__ T_STRING ;
 int json_decode_ascend (int *) ;
 int json_decode_descend (int *,int *,int) ;
 int json_next_token (int *,TYPE_2__*) ;
 int json_process_value (int *,int *,TYPE_2__*) ;
 int json_throw_parse_error (int *,int *,char*,TYPE_2__*) ;
 int lua_newtable (int *) ;
 int lua_pushlstring (int *,int ,int ) ;
 int lua_rawset (int *,int) ;

__attribute__((used)) static void json_parse_object_context(lua_State *l, json_parse_t *json)
{
    json_token_t token;



    json_decode_descend(l, json, 3);

    lua_newtable(l);

    json_next_token(json, &token);


    if (token.type == T_OBJ_END) {
        json_decode_ascend(json);
        return;
    }

    while (1) {
        if (token.type != T_STRING)
            json_throw_parse_error(l, json, "object key string", &token);


        lua_pushlstring(l, token.value.string, token.string_len);

        json_next_token(json, &token);
        if (token.type != T_COLON)
            json_throw_parse_error(l, json, "colon", &token);


        json_next_token(json, &token);
        json_process_value(l, json, &token);


        lua_rawset(l, -3);

        json_next_token(json, &token);

        if (token.type == T_OBJ_END) {
            json_decode_ascend(json);
            return;
        }

        if (token.type != T_COMMA)
            json_throw_parse_error(l, json, "comma or object end", &token);

        json_next_token(json, &token);
    }
}
