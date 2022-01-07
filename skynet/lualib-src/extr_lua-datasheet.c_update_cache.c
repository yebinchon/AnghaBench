
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int dummy; } ;
struct proxy {void const* data; int index; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TUSERDATA ;
 int NODECACHE ;
 int PROXYCACHE ;
 int clear_table (int *) ;
 struct table* gettable (void const*,int ) ;
 int lua_getfield (int *,int ,int ) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_newtable (int *) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_rawget (int *,int) ;
 int lua_rawset (int *,int) ;
 int lua_rawsetp (int *,int,struct table const*) ;
 int lua_setmetatable (int *,int) ;
 struct proxy* lua_touserdata (int *,int) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static void
update_cache(lua_State *L, const void *data, const void * newdata) {
 lua_getfield(L, LUA_REGISTRYINDEX, NODECACHE);
 int t = lua_gettop(L);
 lua_getfield(L, LUA_REGISTRYINDEX, PROXYCACHE);
 int pt = t + 1;
 lua_newtable(L);
 int nt = pt + 1;
 lua_pushnil(L);
 while (lua_next(L, t) != 0) {

  lua_pushvalue(L, -1);
  if (lua_rawget(L, pt) == LUA_TUSERDATA) {

   struct proxy * p = lua_touserdata(L, -1);
   if (p->data == data) {

    p->data = newdata;
    const struct table * newt = gettable(newdata, p->index);
    lua_pop(L, 1);

    clear_table(L);
    lua_pushvalue(L, lua_upvalueindex(1));

    lua_setmetatable(L, -2);

    if (newt) {
     lua_rawsetp(L, nt, newt);
    } else {
     lua_pop(L, 1);
    }

    lua_pushvalue(L, -1);
    lua_pushnil(L);
    lua_rawset(L, t);
   } else {
    lua_pop(L, 2);
   }
  } else {
   lua_pop(L, 2);

  }
 }

 lua_pushnil(L);
 while (lua_next(L, nt) != 0) {
  lua_pushvalue(L, -2);
  lua_insert(L, -2);

  lua_rawset(L, t);
 }

 lua_pop(L, 3);
}
