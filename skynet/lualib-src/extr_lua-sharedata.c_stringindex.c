
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int string_index; int * L; } ;
typedef int lua_State ;


 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int) ;
 int lua_rawset (int *,int) ;
 int lua_tointeger (int *,int) ;

__attribute__((used)) static int
stringindex(struct context *ctx, const char * str, size_t sz) {
 lua_State *L = ctx->L;
 lua_pushlstring(L, str, sz);
 lua_pushvalue(L, -1);
 lua_rawget(L, 1);
 int index;

 if (lua_isnil(L, -1)) {
  index = ++ctx->string_index;
  lua_pop(L, 1);
  lua_pushinteger(L, index);
  lua_rawset(L, 1);
 } else {
  index = lua_tointeger(L, -1);
  lua_pop(L, 2);
 }
 return index;
}
