
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_type {int dummy; } ;
struct encode_ud {int tbl_index; scalar_t__ iter_key; scalar_t__ iter_table; scalar_t__ iter_func; scalar_t__ deep; scalar_t__ array_index; int * array_tag; struct sproto_type* st; int * L; } ;
typedef int lua_State ;


 int LUA_TNIL ;
 int encode ;
 void* expand_buffer (int *,int,int) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_pushlstring (int *,void*,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_settop (int *,int) ;
 int lua_tointeger (int *,int) ;
 void* lua_touserdata (int *,int) ;
 int lua_upvalueindex (int) ;
 int sproto_encode (struct sproto_type*,void*,int,int ,struct encode_ud*) ;

__attribute__((used)) static int
lencode(lua_State *L) {
 struct encode_ud self;
 void * buffer = lua_touserdata(L, lua_upvalueindex(1));
 int sz = lua_tointeger(L, lua_upvalueindex(2));
 int tbl_index = 2;
 struct sproto_type * st = lua_touserdata(L, 1);
 if (st == ((void*)0)) {
  luaL_checktype(L, tbl_index, LUA_TNIL);
  lua_pushstring(L, "");
  return 1;
 }
 self.L = L;
 self.st = st;
 self.tbl_index = tbl_index;
 for (;;) {
  int r;
  self.array_tag = ((void*)0);
  self.array_index = 0;
  self.deep = 0;

  lua_settop(L, tbl_index);
  self.iter_func = 0;
  self.iter_table = 0;
  self.iter_key = 0;

  r = sproto_encode(st, buffer, sz, encode, &self);
  if (r<0) {
   buffer = expand_buffer(L, sz, sz*2);
   sz *= 2;
  } else {
   lua_pushlstring(L, buffer, r);
   return 1;
  }
 }
}
