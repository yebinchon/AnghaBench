
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MARKED_TABLE ;
 int lua_pushnumber (int *,int) ;
 int lua_rawsetp (int *,int ,void const*) ;

__attribute__((used)) static void marked(lua_State *L, const void *p, int len) {
 lua_pushnumber(L, len);
    lua_rawsetp(L, MARKED_TABLE, p);
}
