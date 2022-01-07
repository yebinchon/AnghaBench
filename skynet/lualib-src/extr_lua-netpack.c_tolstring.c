
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ lua_isuserdata (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static const char *
tolstring(lua_State *L, size_t *sz, int index) {
 const char * ptr;
 if (lua_isuserdata(L,index)) {
  ptr = (const char *)lua_touserdata(L,index);
  *sz = (size_t)luaL_checkinteger(L, index+1);
 } else {
  ptr = luaL_checklstring(L, index, sz);
 }
 return ptr;
}
