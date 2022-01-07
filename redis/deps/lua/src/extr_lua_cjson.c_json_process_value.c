
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int boolean; int number; int string; } ;
struct TYPE_6__ {int type; TYPE_1__ value; int string_len; } ;
typedef TYPE_2__ json_token_t ;
typedef int json_parse_t ;
 int json_parse_array_context (int *,int *) ;
 int json_parse_object_context (int *,int *) ;
 int json_throw_parse_error (int *,int *,char*,TYPE_2__*) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushlstring (int *,int ,int ) ;
 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static void json_process_value(lua_State *l, json_parse_t *json,
                               json_token_t *token)
{
    switch (token->type) {
    case 128:
        lua_pushlstring(l, token->value.string, token->string_len);
        break;;
    case 130:
        lua_pushnumber(l, token->value.number);
        break;;
    case 132:
        lua_pushboolean(l, token->value.boolean);
        break;;
    case 129:
        json_parse_object_context(l, json);
        break;;
    case 133:
        json_parse_array_context(l, json);
        break;;
    case 131:


        lua_pushlightuserdata(l, ((void*)0));
        break;;
    default:
        json_throw_parse_error(l, json, "value", token);
    }
}
