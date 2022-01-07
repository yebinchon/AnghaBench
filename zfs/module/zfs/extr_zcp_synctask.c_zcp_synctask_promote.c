
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zri_cred; } ;
typedef TYPE_1__ zcp_run_info_t ;
typedef int nvlist_t ;
typedef int lua_State ;
struct TYPE_6__ {char const* ddpa_clonename; int cr; int * err_ds; int member_0; } ;
typedef TYPE_2__ dsl_dataset_promote_arg_t ;
typedef int boolean_t ;


 int dsl_dataset_promote_check ;
 int dsl_dataset_promote_sync ;
 char* lua_tostring (int *,int) ;
 TYPE_1__* zcp_run_info (int *) ;
 int zcp_sync_task (int *,int ,int ,TYPE_2__*,int ,char const*) ;

__attribute__((used)) static int
zcp_synctask_promote(lua_State *state, boolean_t sync, nvlist_t *err_details)
{
 int err;
 dsl_dataset_promote_arg_t ddpa = { 0 };
 const char *dsname = lua_tostring(state, 1);
 zcp_run_info_t *ri = zcp_run_info(state);

 ddpa.ddpa_clonename = dsname;
 ddpa.err_ds = err_details;
 ddpa.cr = ri->zri_cred;





 err = zcp_sync_task(state, dsl_dataset_promote_check,
     dsl_dataset_promote_sync, &ddpa, sync, dsname);

 return (err);
}
