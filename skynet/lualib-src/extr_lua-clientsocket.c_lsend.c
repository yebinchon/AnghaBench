
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int block_send (int *,int,char const*,int) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;

__attribute__((used)) static int
lsend(lua_State *L) {
 size_t sz = 0;
 int fd = luaL_checkinteger(L,1);
 const char * msg = luaL_checklstring(L, 2, &sz);

 block_send(L, fd, msg, (int)sz);

 return 0;
}
