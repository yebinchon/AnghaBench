
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union value {int tbl; int boolean; int string; int d; int n; } ;
typedef int uint8_t ;
typedef int lua_State ;







 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 char* lua_tolstring (int *,int ,size_t*) ;

__attribute__((used)) static void
pushvalue(lua_State *L, lua_State *sL, uint8_t vt, union value *v) {
 switch(vt) {
 case 130:
  lua_pushnumber(L, v->n);
  break;
 case 131:
  lua_pushinteger(L, v->d);
  break;
 case 129: {
  size_t sz = 0;
  const char *str = lua_tolstring(sL, v->string, &sz);
  lua_pushlstring(L, str, sz);
  break;
 }
 case 132:
  lua_pushboolean(L, v->boolean);
  break;
 case 128:
  lua_pushlightuserdata(L, v->tbl);
  break;
 default:
  lua_pushnil(L);
  break;
 }
}
