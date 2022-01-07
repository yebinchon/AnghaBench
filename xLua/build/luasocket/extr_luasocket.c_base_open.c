
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* LUASOCKET_VERSION ;
 int func ;
 int luaL_openlib (int *,char*,int ,int ) ;
 int luaL_setfuncs (int *,int ,int ) ;
 int lua_error (int *) ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawset (int *,int) ;
 scalar_t__ socket_open () ;

__attribute__((used)) static int base_open(lua_State *L) {
    if (socket_open()) {





        luaL_openlib(L, "socket", func, 0);







        lua_pushstring(L, "_VERSION");
        lua_pushstring(L, LUASOCKET_VERSION);
        lua_rawset(L, -3);
        return 1;
    } else {
        lua_pushstring(L, "unable to initialize library");
        lua_error(L);
        return 0;
    }
}
