
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int send_message (int *,int ,int) ;

__attribute__((used)) static int
lredirect(lua_State *L) {
 uint32_t source = (uint32_t)luaL_checkinteger(L,2);
 return send_message(L, source, 3);
}
