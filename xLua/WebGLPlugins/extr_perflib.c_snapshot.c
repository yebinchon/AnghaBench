
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_GLOBALSINDEX ;
 int LUA_REGISTRYINDEX ;
 int LUA_RIDX_GLOBALS ;
 int RT_GLOBAL ;
 int RT_REGISTRY ;
 int * luaL_newstate () ;
 int lua_close (int *) ;
 int lua_newtable (int *) ;
 scalar_t__ lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushfstring (int *,char*,void const*) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_pushvalue (int *,int ) ;
 int lua_rawgeti (int *,int ,int ) ;
 int lua_rawseti (int *,int,scalar_t__) ;
 int lua_setfield (int *,int,char*) ;
 void* lua_topointer (int *,int) ;
 int make_report (int *,int *) ;
 int mark_root_table (int *,int *,int) ;

__attribute__((used)) static int snapshot(lua_State* L) {
 lua_State *dL = luaL_newstate();
 int len;
 const void * p;
 lua_newtable(dL);




 lua_pushvalue(L, LUA_GLOBALSINDEX);

 mark_root_table(L, dL, RT_GLOBAL);
 lua_pop(L, 1);

 lua_pushvalue(L, LUA_REGISTRYINDEX);
 p = lua_topointer(L, -1);
 len = mark_root_table(L, dL, RT_REGISTRY);
 lua_pop(L, 1);

 make_report(L, dL);

 lua_newtable(L);
 lua_pushstring(L, "[REGISTRY Level 1]");
 lua_setfield(L, -2, "name");
 lua_pushnumber(L, RT_REGISTRY);
 lua_setfield(L, -2, "type");
 lua_pushnumber(L, len);
 lua_setfield(L, -2, "size");
 lua_pushfstring(L, "%p", p);
 lua_setfield(L, -2, "pointer");
 lua_pushstring(L, "");
 lua_setfield(L, -2, "used_in");
 lua_rawseti(L, -2, lua_objlen(L, -2) + 1);

 lua_close(dL);

 return 1;
}
