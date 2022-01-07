
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_15__ {char* za_name; } ;
typedef TYPE_3__ zap_attribute_t ;
typedef int uint64_t ;
typedef int lua_State ;
struct TYPE_16__ {int dp_meta_objset; } ;
typedef TYPE_4__ dsl_pool_t ;
struct TYPE_17__ {scalar_t__ ds_bookmarks_obj; TYPE_2__* ds_dir; int ds_object; } ;
typedef TYPE_5__ dsl_dataset_t ;
struct TYPE_18__ {TYPE_4__* zri_pool; } ;
struct TYPE_14__ {TYPE_1__* dd_pool; } ;
struct TYPE_13__ {int dp_meta_objset; } ;


 int DS_FIELD_BOOKMARK_NAMES ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dataset_hold_obj (TYPE_4__*,int ,int ,TYPE_5__**) ;
 int dsl_dataset_is_zapified (TYPE_5__*) ;
 int dsl_dataset_name (TYPE_5__*,char*) ;
 int dsl_dataset_rele (TYPE_5__*,int ) ;
 int luaL_error (int *,char*,int) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,char*) ;
 int lua_replace (int *,int ) ;
 int lua_tonumber (int *,int ) ;
 int lua_upvalueindex (int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init_serialized (int *,int ,scalar_t__,int ) ;
 int zap_cursor_retrieve (int *,TYPE_3__*) ;
 int zap_cursor_serialize (int *) ;
 int zap_lookup (int ,int ,int ,int,int,scalar_t__*) ;
 TYPE_6__* zcp_run_info (int *) ;

__attribute__((used)) static int
zcp_bookmarks_iter(lua_State *state)
{
 char ds_name[ZFS_MAX_DATASET_NAME_LEN];
 char bookmark_name[ZFS_MAX_DATASET_NAME_LEN];
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

 if (!dsl_dataset_is_zapified(ds)) {
  dsl_dataset_rele(ds, FTAG);
  return (0);
 }

 err = zap_lookup(dp->dp_meta_objset, ds->ds_object,
     DS_FIELD_BOOKMARK_NAMES, sizeof (ds->ds_bookmarks_obj), 1,
     &ds->ds_bookmarks_obj);
 if (err != 0 && err != ENOENT) {
  dsl_dataset_rele(ds, FTAG);
  return (luaL_error(state,
      "unexpected error %d from zap_lookup()", err));
 }
 if (ds->ds_bookmarks_obj == 0) {
  dsl_dataset_rele(ds, FTAG);
  return (0);
 }


 dsl_dataset_name(ds, ds_name);

 zap_cursor_init_serialized(&zc, ds->ds_dir->dd_pool->dp_meta_objset,
     ds->ds_bookmarks_obj, cursor);
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


 int n = snprintf(bookmark_name, ZFS_MAX_DATASET_NAME_LEN, "%s#%s",
     ds_name, za.za_name);
 if (n >= ZFS_MAX_DATASET_NAME_LEN) {
  return (luaL_error(state,
      "unexpected error %d from snprintf()", ENAMETOOLONG));
 }

 lua_pushnumber(state, cursor);
 lua_replace(state, lua_upvalueindex(2));

 (void) lua_pushstring(state, bookmark_name);
 return (1);
}
