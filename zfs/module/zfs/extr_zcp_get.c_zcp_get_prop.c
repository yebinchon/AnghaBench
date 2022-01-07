
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
struct TYPE_4__ {int kwargs; int pargs; int name; } ;
typedef TYPE_1__ zcp_lib_info_t ;
typedef int lua_State ;
typedef int dsl_pool_t ;
struct TYPE_5__ {int * zri_pool; } ;


 scalar_t__ ZPROP_INVAL ;
 int luaL_error (int *,char*,char const*) ;
 char* lua_tostring (int *,int) ;
 TYPE_1__ zcp_get_prop_info ;
 int zcp_get_system_prop (int *,int *,char const*,scalar_t__) ;
 int zcp_get_user_prop (int *,int *,char const*,char const*) ;
 int zcp_get_userquota_prop (int *,int *,char const*,char const*) ;
 int zcp_get_written_prop (int *,int *,char const*,char const*) ;
 int zcp_parse_args (int *,int ,int ,int ) ;
 TYPE_2__* zcp_run_info (int *) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 scalar_t__ zfs_prop_user (char const*) ;
 scalar_t__ zfs_prop_userquota (char const*) ;
 scalar_t__ zfs_prop_written (char const*) ;

__attribute__((used)) static int
zcp_get_prop(lua_State *state)
{
 const char *dataset_name;
 const char *property_name;
 dsl_pool_t *dp = zcp_run_info(state)->zri_pool;
 zcp_lib_info_t *libinfo = &zcp_get_prop_info;

 zcp_parse_args(state, libinfo->name, libinfo->pargs, libinfo->kwargs);

 dataset_name = lua_tostring(state, 1);
 property_name = lua_tostring(state, 2);


 if (zfs_prop_user(property_name)) {
  return (zcp_get_user_prop(state, dp,
      dataset_name, property_name));
 }

 if (zfs_prop_userquota(property_name)) {




  return (luaL_error(state,
      "user quota properties only supported in kernel mode",
      property_name));

 }

 if (zfs_prop_written(property_name)) {
  return (zcp_get_written_prop(state, dp,
      dataset_name, property_name));
 }

 zfs_prop_t zfs_prop = zfs_name_to_prop(property_name);

 if (zfs_prop != ZPROP_INVAL) {
  return (zcp_get_system_prop(state, dp, dataset_name,
      zfs_prop));
 }


 return (luaL_error(state,
     "'%s' is not a valid property", property_name));
}
