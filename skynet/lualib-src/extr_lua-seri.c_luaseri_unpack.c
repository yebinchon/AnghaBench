
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int type ;
struct read_block {int dummy; } ;
typedef int lua_State ;


 int LUA_MINSTACK ;
 scalar_t__ LUA_TSTRING ;
 int luaL_checkinteger (int *,int) ;
 int luaL_checkstack (int *,int ,int *) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_settop (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 void* lua_touserdata (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int push_value (int *,struct read_block*,int,int) ;
 int* rb_read (struct read_block*,int) ;
 int rball_init (struct read_block*,void*,int) ;

int
luaseri_unpack(lua_State *L) {
 if (lua_isnoneornil(L,1)) {
  return 0;
 }
 void * buffer;
 int len;
 if (lua_type(L,1) == LUA_TSTRING) {
  size_t sz;
   buffer = (void *)lua_tolstring(L,1,&sz);
  len = (int)sz;
 } else {
  buffer = lua_touserdata(L,1);
  len = luaL_checkinteger(L,2);
 }
 if (len == 0) {
  return 0;
 }
 if (buffer == ((void*)0)) {
  return luaL_error(L, "deserialize null pointer");
 }

 lua_settop(L,1);
 struct read_block rb;
 rball_init(&rb, buffer, len);

 int i;
 for (i=0;;i++) {
  if (i%8==7) {
   luaL_checkstack(L,LUA_MINSTACK,((void*)0));
  }
  uint8_t type = 0;
  uint8_t *t = rb_read(&rb, sizeof(type));
  if (t==((void*)0))
   break;
  type = *t;
  push_value(L, &rb, type & 0x7, type>>3);
 }



 return lua_gettop(L) - 1;
}
