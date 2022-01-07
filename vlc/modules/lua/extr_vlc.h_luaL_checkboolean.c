
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TBOOLEAN ;
 int luaL_checktype (int *,int,int ) ;
 int lua_toboolean (int *,int) ;

__attribute__((used)) static inline bool luaL_checkboolean( lua_State *L, int narg )
{
    luaL_checktype( L, narg, LUA_TBOOLEAN );
    return lua_toboolean( L, narg );
}
