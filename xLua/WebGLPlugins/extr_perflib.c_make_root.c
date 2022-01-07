
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ROOT_TABLE ;
 int lua_getfield (int *,int,char*) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawgetp (int *,int ,void const*) ;
 int lua_rawsetp (int *,int ,void const*) ;
 int lua_setfield (int *,int,char const*) ;

__attribute__((used)) static void make_root(lua_State *L, const void *p, const char *name, int type, const char *used_in, int need_stat) {
 lua_rawgetp(L, ROOT_TABLE, p);
 if (lua_isnil(L, -1)) {
  lua_pop(L, 1);
  lua_newtable(L);
  lua_newtable(L);
  if (used_in != ((void*)0)) {
   lua_pushboolean(L, 1);
   lua_setfield(L, -2, used_in);
  }
  lua_setfield(L, -2, "used_in");
  if (need_stat) {
      lua_pushstring(L, name);
      lua_setfield(L, -2, "name");
      lua_pushnumber(L, type);
      lua_setfield(L, -2, "type");
  }

  lua_pushvalue(L, -1);
  lua_rawsetp(L, ROOT_TABLE, p);
 } else {
  if (used_in != ((void*)0)) {
   lua_getfield(L, -1, "used_in");
   lua_pushboolean(L, 1);
   lua_setfield(L, -2, used_in);
   lua_pop(L, 1);
  }
 }
}
