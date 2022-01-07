
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 void* expand_buffer (int *,int,int) ;
 void* getbuffer (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_pushlstring (int *,void*,int) ;
 int lua_tointeger (int *,int ) ;
 void* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int sproto_unpack (void const*,size_t,void*,int) ;

__attribute__((used)) static int
lunpack(lua_State *L) {
 size_t sz=0;
 const void * buffer = getbuffer(L, 1, &sz);
 void * output = lua_touserdata(L, lua_upvalueindex(1));
 int osz = lua_tointeger(L, lua_upvalueindex(2));
 int r = sproto_unpack(buffer, sz, output, osz);
 if (r < 0)
  return luaL_error(L, "Invalid unpack stream");
 if (r > osz) {
  output = expand_buffer(L, osz, r);
  r = sproto_unpack(buffer, sz, output, r);
  if (r < 0)
   return luaL_error(L, "Invalid unpack stream");
 }
 lua_pushlstring(L, output, r);
 return 1;
}
