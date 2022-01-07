
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kwargs; int pargs; int name; } ;
typedef TYPE_1__ zcp_list_info_t ;
typedef int nvlist_t ;
typedef int lua_State ;
typedef int errbuf ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_5__ {int * zri_pool; } ;


 int FTAG ;
 int dsl_dataset_rele (int *,int ) ;
 int * fnvlist_alloc () ;
 int luaL_error (int *,char*,char*) ;
 char* lua_tostring (int *,int) ;
 int nvlist_free (int *) ;
 int * zcp_dataset_hold (int *,int *,char const*,int ) ;
 int zcp_dataset_system_props (int *,int *) ;
 int zcp_nvlist_to_lua (int *,int *,char*,int) ;
 int zcp_parse_args (int *,int ,int ,int ) ;
 TYPE_3__* zcp_run_info (int *) ;
 TYPE_1__ zcp_system_props_list_info ;

__attribute__((used)) static int
zcp_system_props_list(lua_State *state)
{
 int error;
 char errbuf[128];
 const char *dataset_name;
 dsl_pool_t *dp = zcp_run_info(state)->zri_pool;
 zcp_list_info_t *libinfo = &zcp_system_props_list_info;
 zcp_parse_args(state, libinfo->name, libinfo->pargs, libinfo->kwargs);
 dataset_name = lua_tostring(state, 1);
 nvlist_t *nv = fnvlist_alloc();

 dsl_dataset_t *ds = zcp_dataset_hold(state, dp, dataset_name, FTAG);
 if (ds == ((void*)0))
  return (1);


 zcp_dataset_system_props(ds, nv);
 dsl_dataset_rele(ds, FTAG);


 error = zcp_nvlist_to_lua(state, nv, errbuf, sizeof (errbuf));
 nvlist_free(nv);
 if (error != 0) {
  return (luaL_error(state,
      "Error returning nvlist: %s", errbuf));
 }
 return (1);
}
