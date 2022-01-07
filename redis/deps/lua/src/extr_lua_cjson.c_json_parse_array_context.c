
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ json_token_t ;
typedef int json_parse_t ;


 scalar_t__ T_ARR_END ;
 scalar_t__ T_COMMA ;
 int json_decode_ascend (int *) ;
 int json_decode_descend (int *,int *,int) ;
 int json_next_token (int *,TYPE_1__*) ;
 int json_process_value (int *,int *,TYPE_1__*) ;
 int json_throw_parse_error (int *,int *,char*,TYPE_1__*) ;
 int lua_newtable (int *) ;
 int lua_rawseti (int *,int,int) ;

__attribute__((used)) static void json_parse_array_context(lua_State *l, json_parse_t *json)
{
    json_token_t token;
    int i;



    json_decode_descend(l, json, 2);

    lua_newtable(l);

    json_next_token(json, &token);


    if (token.type == T_ARR_END) {
        json_decode_ascend(json);
        return;
    }

    for (i = 1; ; i++) {
        json_process_value(l, json, &token);
        lua_rawseti(l, -2, i);

        json_next_token(json, &token);

        if (token.type == T_ARR_END) {
            json_decode_ascend(json);
            return;
        }

        if (token.type != T_COMMA)
            json_throw_parse_error(l, json, "comma or array end", &token);

        json_next_token(json, &token);
    }
}
