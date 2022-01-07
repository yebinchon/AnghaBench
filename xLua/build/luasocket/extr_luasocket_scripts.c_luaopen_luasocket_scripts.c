
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int name; int (* func ) (int *) ;} ;
typedef TYPE_1__ luaL_Reg ;


 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_setfield (int *,int,int ) ;
 TYPE_1__* luasocket_scripts_modules ;
 int stub1 (int *) ;

void luaopen_luasocket_scripts(lua_State* L)
{
    luaL_Reg* lib = luasocket_scripts_modules;
    lua_getglobal(L, "package");
    lua_getfield(L, -1, "preload");
    for (; lib->func; lib++)
    {
        lib->func(L);
        lua_setfield(L, -2, lib->name);
    }
    lua_pop(L, 2);
}
