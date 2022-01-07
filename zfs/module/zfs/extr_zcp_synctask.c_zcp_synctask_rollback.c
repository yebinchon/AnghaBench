
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
typedef int lua_State ;
struct TYPE_3__ {char const* ddra_fsname; int * ddra_result; int member_0; } ;
typedef TYPE_1__ dsl_dataset_rollback_arg_t ;
typedef int boolean_t ;


 int dsl_dataset_rollback_check ;
 int dsl_dataset_rollback_sync ;
 char* lua_tostring (int *,int) ;
 int zcp_sync_task (int *,int ,int ,TYPE_1__*,int ,char const*) ;

__attribute__((used)) static int
zcp_synctask_rollback(lua_State *state, boolean_t sync, nvlist_t *err_details)
{
 int err;
 const char *dsname = lua_tostring(state, 1);
 dsl_dataset_rollback_arg_t ddra = { 0 };

 ddra.ddra_fsname = dsname;
 ddra.ddra_result = err_details;

 err = zcp_sync_task(state, dsl_dataset_rollback_check,
     dsl_dataset_rollback_sync, &ddra, sync, dsname);

 return (err);
}
