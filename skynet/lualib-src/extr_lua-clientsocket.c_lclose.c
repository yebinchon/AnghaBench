
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int close (int) ;
 int luaL_checkinteger (int *,int) ;

__attribute__((used)) static int
lclose(lua_State *L) {
 int fd = luaL_checkinteger(L, 1);
 close(fd);

 return 0;
}
