
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zvol_task_t ;
typedef int uint64_t ;
struct TYPE_5__ {TYPE_1__* dp_spa; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_4__ {int spa_zvol_taskq; } ;


 int MAXNAMELEN ;
 int TQ_SLEEP ;
 int ZVOL_ASYNC_SET_VOLMODE ;
 int dsl_dataset_name (int *,char*) ;
 scalar_t__ dsl_prop_get_int_ds (int *,char*,int *) ;
 int taskq_dispatch (int ,int ,int *,int ) ;
 int * zvol_task_alloc (int ,char*,int *,int ) ;
 int zvol_task_cb ;

__attribute__((used)) static int
zvol_set_volmode_sync_cb(dsl_pool_t *dp, dsl_dataset_t *ds, void *arg)
{
 char dsname[MAXNAMELEN];
 zvol_task_t *task;
 uint64_t volmode;

 dsl_dataset_name(ds, dsname);
 if (dsl_prop_get_int_ds(ds, "volmode", &volmode) != 0)
  return (0);
 task = zvol_task_alloc(ZVOL_ASYNC_SET_VOLMODE, dsname, ((void*)0), volmode);
 if (task == ((void*)0))
  return (0);

 (void) taskq_dispatch(dp->dp_spa->spa_zvol_taskq, zvol_task_cb,
     task, TQ_SLEEP);
 return (0);
}
