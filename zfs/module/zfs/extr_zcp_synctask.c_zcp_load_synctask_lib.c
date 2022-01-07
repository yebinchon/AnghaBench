
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
typedef TYPE_1__ zcp_synctask_info_t ;
typedef int lua_State ;
typedef int boolean_t ;


 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushcclosure (int *,int *,int) ;
 int lua_pushlightuserdata (int *,TYPE_1__*) ;
 int lua_setfield (int *,int,int ) ;
 TYPE_1__ zcp_synctask_destroy_info ;
 TYPE_1__ zcp_synctask_promote_info ;
 TYPE_1__ zcp_synctask_rollback_info ;
 TYPE_1__ zcp_synctask_snapshot_info ;
 int zcp_synctask_wrapper ;

int
zcp_load_synctask_lib(lua_State *state, boolean_t sync)
{
 int i;
 zcp_synctask_info_t *zcp_synctask_funcs[] = {
  &zcp_synctask_destroy_info,
  &zcp_synctask_promote_info,
  &zcp_synctask_rollback_info,
  &zcp_synctask_snapshot_info,
  ((void*)0)
 };

 lua_newtable(state);

 for (i = 0; zcp_synctask_funcs[i] != ((void*)0); i++) {
  zcp_synctask_info_t *info = zcp_synctask_funcs[i];
  lua_pushlightuserdata(state, info);
  lua_pushboolean(state, sync);
  lua_pushcclosure(state, &zcp_synctask_wrapper, 2);
  lua_setfield(state, -2, info->name);
  info++;
 }

 return (1);
}
