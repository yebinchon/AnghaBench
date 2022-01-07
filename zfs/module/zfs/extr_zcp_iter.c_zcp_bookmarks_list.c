
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int lua_State ;
typedef int dsl_pool_t ;
struct TYPE_5__ {int ds_object; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int * zri_pool; } ;


 int FTAG ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int lua_pushcclosure (int *,int *,int) ;
 int lua_pushnumber (int *,int ) ;
 char* lua_tostring (int *,int) ;
 int zcp_argerror (int *,int,char*,char const*) ;
 int zcp_bookmarks_iter ;
 TYPE_1__* zcp_dataset_hold (int *,int *,char const*,int ) ;
 TYPE_2__* zcp_run_info (int *) ;

__attribute__((used)) static int
zcp_bookmarks_list(lua_State *state)
{
 const char *dsname = lua_tostring(state, 1);
 dsl_pool_t *dp = zcp_run_info(state)->zri_pool;

 dsl_dataset_t *ds = zcp_dataset_hold(state, dp, dsname, FTAG);
 if (ds == ((void*)0))
  return (1);

 boolean_t issnap = ds->ds_is_snapshot;
 uint64_t dsobj = ds->ds_object;
 uint64_t cursor = 0;
 dsl_dataset_rele(ds, FTAG);

 if (issnap) {
  return (zcp_argerror(state, 1, "%s is a snapshot", dsname));
 }

 lua_pushnumber(state, dsobj);
 lua_pushnumber(state, cursor);
 lua_pushcclosure(state, &zcp_bookmarks_iter, 2);
 return (1);
}
