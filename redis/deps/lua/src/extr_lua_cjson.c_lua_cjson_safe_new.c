
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int json_protect_conversion ;
 int lua_cjson_new (int *) ;
 int lua_getfield (int *,int,char const*) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushcfunction (int *,int (*) (int *)) ;
 int lua_setfield (int *,int,char const*) ;

__attribute__((used)) static int lua_cjson_safe_new(lua_State *l)
{
    const char *func[] = { "decode", "encode", ((void*)0) };
    int i;

    lua_cjson_new(l);


    lua_pushcfunction(l, lua_cjson_safe_new);
    lua_setfield(l, -2, "new");

    for (i = 0; func[i]; i++) {
        lua_getfield(l, -1, func[i]);
        lua_pushcclosure(l, json_protect_conversion, 1);
        lua_setfield(l, -2, func[i]);
    }

    return 1;
}
