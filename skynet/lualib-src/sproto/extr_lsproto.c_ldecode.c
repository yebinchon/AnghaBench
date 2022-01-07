
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_type {int dummy; } ;
struct decode_ud {int mainindex_tag; int result_index; scalar_t__ key_index; scalar_t__ deep; int * array_tag; scalar_t__ array_index; int * L; } ;
typedef int lua_State ;


 int decode ;
 void* getbuffer (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_istable (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_settop (int *,int ) ;
 struct sproto_type* lua_touserdata (int *,int) ;
 int sproto_decode (struct sproto_type*,void const*,int,int ,struct decode_ud*) ;

__attribute__((used)) static int
ldecode(lua_State *L) {
 struct sproto_type * st = lua_touserdata(L, 1);
 const void * buffer;
 struct decode_ud self;
 size_t sz;
 int r;
 if (st == ((void*)0)) {

  return 0;
 }
 sz = 0;
 buffer = getbuffer(L, 2, &sz);
 if (!lua_istable(L, -1)) {
  lua_newtable(L);
 }
 self.L = L;
 self.result_index = lua_gettop(L);
 self.array_index = 0;
 self.array_tag = ((void*)0);
 self.deep = 0;
 self.mainindex_tag = -1;
 self.key_index = 0;
 r = sproto_decode(st, buffer, (int)sz, decode, &self);
 if (r < 0) {
  return luaL_error(L, "decode error");
 }
 lua_settop(L, self.result_index);
 lua_pushinteger(L, r);
 return 2;
}
