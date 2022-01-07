
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int dummy; } ;
struct proxy {int index; void const* data; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TTABLE ;
 int NODECACHE ;
 int PROXYCACHE ;
 struct table* gettable (void const*,int) ;
 int luaL_error (int *,char*,int) ;
 int lua_getfield (int *,int ,int ) ;
 int lua_newtable (int *) ;
 struct proxy* lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_rawgetp (int *,int,struct table const*) ;
 int lua_rawset (int *,int) ;
 int lua_rawsetp (int *,int,struct table const*) ;
 int lua_replace (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static void
create_proxy(lua_State *L, const void *data, int index) {
 const struct table * t = gettable(data, index);
 if (t == ((void*)0)) {
  luaL_error(L, "Invalid index %d", index);
 }
 lua_getfield(L, LUA_REGISTRYINDEX, NODECACHE);
 if (lua_rawgetp(L, -1, t) == LUA_TTABLE) {
  lua_replace(L, -2);
  return;
 }
 lua_pop(L, 1);
 lua_newtable(L);
 lua_pushvalue(L, lua_upvalueindex(1));
 lua_setmetatable(L, -2);
 lua_pushvalue(L, -1);

 lua_rawsetp(L, -3, t);

 lua_getfield(L, LUA_REGISTRYINDEX, PROXYCACHE);

 lua_pushvalue(L, -2);

 struct proxy * p = lua_newuserdata(L, sizeof(struct proxy));

 p->data = data;
 p->index = index;
 lua_rawset(L, -3);

 lua_pop(L, 1);

 lua_replace(L, -2);

}
