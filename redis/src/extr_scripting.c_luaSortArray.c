
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_call (int *,int,int ) ;
 int lua_getglobal (int *,char*) ;
 int lua_gettable (int *,int) ;
 scalar_t__ lua_pcall (int *,int,int ,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_pushvalue (int *,int) ;

void luaSortArray(lua_State *lua) {

    lua_getglobal(lua,"table");
    lua_pushstring(lua,"sort");
    lua_gettable(lua,-2);
    lua_pushvalue(lua,-3);
    if (lua_pcall(lua,1,0,0)) {






        lua_pop(lua,1);
        lua_pushstring(lua,"sort");
        lua_gettable(lua,-2);
        lua_pushvalue(lua,-3);
        lua_getglobal(lua,"__redis__compare_helper");

        lua_call(lua,2,0);
    }

    lua_pop(lua,1);
}
