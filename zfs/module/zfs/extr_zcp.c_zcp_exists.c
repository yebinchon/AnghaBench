
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * zri_pool; } ;
typedef TYPE_1__ zcp_run_info_t ;
struct TYPE_6__ {int kwargs; int pargs; int name; } ;
typedef TYPE_2__ zcp_lib_info_t ;
typedef int lua_State ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EIO ;
 int ENOENT ;
 int EXDEV ;
 int FTAG ;
 int dsl_dataset_hold (int *,char const*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int luaL_error (int *,char*,...) ;
 int lua_pushboolean (int *,int ) ;
 char* lua_tostring (int *,int) ;
 TYPE_2__ zcp_exists_info ;
 int zcp_parse_args (int *,int ,int ,int ) ;
 TYPE_1__* zcp_run_info (int *) ;

__attribute__((used)) static int
zcp_exists(lua_State *state)
{
 zcp_run_info_t *ri = zcp_run_info(state);
 dsl_pool_t *dp = ri->zri_pool;
 zcp_lib_info_t *libinfo = &zcp_exists_info;

 zcp_parse_args(state, libinfo->name, libinfo->pargs, libinfo->kwargs);

 const char *dsname = lua_tostring(state, 1);

 dsl_dataset_t *ds;
 int error = dsl_dataset_hold(dp, dsname, FTAG, &ds);
 if (error == 0) {
  dsl_dataset_rele(ds, FTAG);
  lua_pushboolean(state, B_TRUE);
 } else if (error == ENOENT) {
  lua_pushboolean(state, B_FALSE);
 } else if (error == EXDEV) {
  return (luaL_error(state, "dataset '%s' is not in the "
      "target pool", dsname));
 } else if (error == EIO) {
  return (luaL_error(state, "I/O error opening dataset '%s'",
      dsname));
 } else if (error != 0) {
  return (luaL_error(state, "unexpected error %d", error));
 }

 return (1);
}
