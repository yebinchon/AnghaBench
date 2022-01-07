
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {char* string; } ;
struct TYPE_7__ {size_t type; scalar_t__ index; TYPE_1__ value; } ;
typedef TYPE_2__ json_token_t ;
struct TYPE_8__ {int tmp; } ;
typedef TYPE_3__ json_parse_t ;


 size_t T_ERROR ;
 char** json_token_type_name ;
 int luaL_error (int *,char*,char const*,char const*,scalar_t__) ;
 int strbuf_free (int ) ;

__attribute__((used)) static void json_throw_parse_error(lua_State *l, json_parse_t *json,
                                   const char *exp, json_token_t *token)
{
    const char *found;

    strbuf_free(json->tmp);

    if (token->type == T_ERROR)
        found = token->value.string;
    else
        found = json_token_type_name[token->type];


    luaL_error(l, "Expected %s but found %s at character %d",
               exp, found, token->index + 1);
}
