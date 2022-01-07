
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int lua_absindex (int *,int) ;
 int lua_gettable (int *,int) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static void
lua_geti(lua_State *L, int index, lua_Integer i) {
 index = lua_absindex(L, index);
 lua_pushinteger(L, i);
 lua_gettable(L, index);
}
