
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ENCODE_MAXSIZE ;
 int luaL_error (int *,char*,int) ;
 void* lua_newuserdata (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_replace (int *,int ) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static void *
expand_buffer(lua_State *L, int osz, int nsz) {
 void *output;
 do {
  osz *= 2;
 } while (osz < nsz);
 if (osz > ENCODE_MAXSIZE) {
  luaL_error(L, "object is too large (>%d)", ENCODE_MAXSIZE);
  return ((void*)0);
 }
 output = lua_newuserdata(L, osz);
 lua_replace(L, lua_upvalueindex(1));
 lua_pushinteger(L, osz);
 lua_replace(L, lua_upvalueindex(2));

 return output;
}
