
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 void* expand_buffer (int *,int,size_t) ;
 void* getbuffer (int *,int,size_t*) ;
 int luaL_error (int *,char*,int) ;
 int lua_pushlstring (int *,void*,int) ;
 int lua_tointeger (int *,int ) ;
 void* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int sproto_pack (void const*,size_t,void*,size_t) ;

__attribute__((used)) static int
lpack(lua_State *L) {
 size_t sz=0;
 const void * buffer = getbuffer(L, 1, &sz);

 size_t maxsz = (sz + 2047) / 2048 * 2 + sz + 2;
 void * output = lua_touserdata(L, lua_upvalueindex(1));
 int bytes;
 int osz = lua_tointeger(L, lua_upvalueindex(2));
 if (osz < maxsz) {
  output = expand_buffer(L, osz, maxsz);
 }
 bytes = sproto_pack(buffer, sz, output, maxsz);
 if (bytes > maxsz) {
  return luaL_error(L, "packing error, return size = %d", bytes);
 }
 lua_pushlstring(L, output, bytes);

 return 1;
}
