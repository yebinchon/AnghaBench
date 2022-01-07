
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_13__ {int za_first_integer; int za_name; } ;
typedef TYPE_3__ zap_attribute_t ;
typedef int uint64_t ;
typedef int lua_State ;
typedef int dsl_pool_t ;
struct TYPE_14__ {TYPE_2__* ds_dir; } ;
typedef TYPE_4__ dsl_dataset_t ;
struct TYPE_16__ {scalar_t__ ds_userrefs_obj; } ;
struct TYPE_15__ {int * zri_pool; } ;
struct TYPE_12__ {TYPE_1__* dd_pool; } ;
struct TYPE_11__ {int dp_meta_objset; } ;


 int ENOENT ;
 int FTAG ;
 int dsl_dataset_hold_obj (int *,int ,int ,TYPE_4__**) ;
 TYPE_8__* dsl_dataset_phys (TYPE_4__*) ;
 int dsl_dataset_rele (TYPE_4__*,int ) ;
 int luaL_error (int *,char*,int) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int lua_replace (int *,int ) ;
 int lua_tonumber (int *,int ) ;
 int lua_upvalueindex (int) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init_serialized (int *,int ,scalar_t__,int ) ;
 int zap_cursor_retrieve (int *,TYPE_3__*) ;
 int zap_cursor_serialize (int *) ;
 TYPE_5__* zcp_run_info (int *) ;

__attribute__((used)) static int
zcp_holds_iter(lua_State *state)
{
 uint64_t dsobj = lua_tonumber(state, lua_upvalueindex(1));
 uint64_t cursor = lua_tonumber(state, lua_upvalueindex(2));
 dsl_pool_t *dp = zcp_run_info(state)->zri_pool;
 dsl_dataset_t *ds;
 zap_attribute_t za;
 zap_cursor_t zc;

 int err = dsl_dataset_hold_obj(dp, dsobj, FTAG, &ds);
 if (err == ENOENT) {
  return (0);
 } else if (err != 0) {
  return (luaL_error(state,
      "unexpected error %d from dsl_dataset_hold_obj(dsobj)",
      err));
 }

 if (dsl_dataset_phys(ds)->ds_userrefs_obj == 0) {
  dsl_dataset_rele(ds, FTAG);
  return (0);
 }

 zap_cursor_init_serialized(&zc, ds->ds_dir->dd_pool->dp_meta_objset,
     dsl_dataset_phys(ds)->ds_userrefs_obj, cursor);
 dsl_dataset_rele(ds, FTAG);

 err = zap_cursor_retrieve(&zc, &za);
 if (err != 0) {
  zap_cursor_fini(&zc);
  if (err != ENOENT) {
   return (luaL_error(state,
       "unexpected error %d from zap_cursor_retrieve()",
       err));
  }
  return (0);
 }
 zap_cursor_advance(&zc);
 cursor = zap_cursor_serialize(&zc);
 zap_cursor_fini(&zc);

 lua_pushnumber(state, cursor);
 lua_replace(state, lua_upvalueindex(2));

 (void) lua_pushstring(state, za.za_name);
 (void) lua_pushnumber(state, za.za_first_integer);
 return (2);
}
