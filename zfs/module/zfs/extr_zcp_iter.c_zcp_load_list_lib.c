
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int name; int * gc; } ;
typedef TYPE_1__ zcp_list_info_t ;
typedef int lua_State ;


 int luaL_newmetatable (int *,int ) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushcclosure (int *,int *,int) ;
 int lua_pushcfunction (int *,int *) ;
 int lua_pushlightuserdata (int *,TYPE_1__*) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,int ) ;
 int lua_settable (int *,int) ;
 TYPE_1__ zcp_bookmarks_list_info ;
 TYPE_1__ zcp_children_list_info ;
 TYPE_1__ zcp_clones_list_info ;
 TYPE_1__ zcp_holds_list_info ;
 int zcp_list_func ;
 TYPE_1__ zcp_props_list_info ;
 TYPE_1__ zcp_snapshots_list_info ;
 TYPE_1__ zcp_system_props_list_info ;
 TYPE_1__ zcp_user_props_list_info ;

int
zcp_load_list_lib(lua_State *state)
{
 int i;
 zcp_list_info_t *zcp_list_funcs[] = {
  &zcp_children_list_info,
  &zcp_snapshots_list_info,
  &zcp_user_props_list_info,
  &zcp_props_list_info,
  &zcp_clones_list_info,
  &zcp_system_props_list_info,
  &zcp_bookmarks_list_info,
  &zcp_holds_list_info,
  ((void*)0)
 };

 lua_newtable(state);

 for (i = 0; zcp_list_funcs[i] != ((void*)0); i++) {
  zcp_list_info_t *info = zcp_list_funcs[i];

  if (info->gc != ((void*)0)) {





   (void) luaL_newmetatable(state, info->name);
   (void) lua_pushstring(state, "__gc");
   lua_pushcfunction(state, info->gc);
   lua_settable(state, -3);
   lua_pop(state, 1);
  }

  lua_pushlightuserdata(state, info);
  lua_pushcclosure(state, &zcp_list_func, 1);
  lua_setfield(state, -2, info->name);
  info++;
 }

 return (1);
}
