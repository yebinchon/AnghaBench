
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TTABLE ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_topointer (int *,int) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int make_root (int *,int ,char*,int,int *,int) ;
 int mark_object (int *,int *) ;
 int mark_table (int *,int *) ;

__attribute__((used)) static int mark_root_table(lua_State* L, lua_State* dL, int type) {
 int len = 0;

 lua_pushnil(L);
 while (lua_next(L, -2) != 0) {
  ++len;
  if (LUA_TTABLE == lua_type(L, -1)) {
   lua_pushvalue(L, -2);

   make_root(dL, lua_topointer(L, -2), lua_tostring(L, -1), type, ((void*)0), 1);
   lua_pop(L, 1);
   mark_table(L, dL);
   lua_pop(dL, 1);
  } else {
      make_root(dL, lua_topointer(L, -1), "FUNCTION", type, ((void*)0), 0);
   mark_object(L, dL);
   lua_pop(dL, 1);
  }
  lua_pop(L, 1);

  make_root(dL, lua_topointer(L, -1), "[KEY]", type, ((void*)0), LUA_TTABLE == lua_type(L, -1));
  mark_object(L, dL);
  lua_pop(dL, 1);
 }

 return len;
}
