
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char const* name; int func; } ;
typedef TYPE_1__ luaL_Reg ;


 int luaL_newmetatable (int *,char const*) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushstring (int *,char const*) ;
 int lua_rawset (int *,int) ;

void auxiliar_newclass(lua_State *L, const char *classname, luaL_Reg *func) {
    luaL_newmetatable(L, classname);

    lua_pushstring(L, "__index");
    lua_newtable(L);

    lua_pushstring(L, "class");
    lua_pushstring(L, classname);
    lua_rawset(L, -3);


    for (; func->name; func++) {
        lua_pushstring(L, func->name);
        lua_pushcfunction(L, func->func);
        lua_rawset(L, func->name[0] == '_' ? -5: -3);
    }
    lua_rawset(L, -3);
    lua_pop(L, 1);
}
