
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ json_token_t ;
struct TYPE_10__ {int tmp; int * data; int * ptr; scalar_t__ current_depth; int cfg; } ;
typedef TYPE_2__ json_parse_t ;


 scalar_t__ T_END ;
 int json_fetch_config (int *) ;
 int json_next_token (TYPE_2__*,TYPE_1__*) ;
 int json_process_value (int *,TYPE_2__*,TYPE_1__*) ;
 int json_throw_parse_error (int *,TYPE_2__*,char*,TYPE_1__*) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int * luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int strbuf_free (int ) ;
 int strbuf_new (size_t) ;

__attribute__((used)) static int json_decode(lua_State *l)
{
    json_parse_t json;
    json_token_t token;
    size_t json_len;

    luaL_argcheck(l, lua_gettop(l) == 1, 1, "expected 1 argument");

    json.cfg = json_fetch_config(l);
    json.data = luaL_checklstring(l, 1, &json_len);
    json.current_depth = 0;
    json.ptr = json.data;






    if (json_len >= 2 && (!json.data[0] || !json.data[1]))
        luaL_error(l, "JSON parser does not support UTF-16 or UTF-32");




    json.tmp = strbuf_new(json_len);

    json_next_token(&json, &token);
    json_process_value(l, &json, &token);


    json_next_token(&json, &token);

    if (token.type != T_END)
        json_throw_parse_error(l, &json, "the end", &token);

    strbuf_free(json.tmp);

    return 1;
}
