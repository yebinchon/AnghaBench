
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int minor_t ;
struct TYPE_3__ {int dduha_chkholds; int dduha_minor; int * dduha_errlist; int * dduha_holds; } ;
typedef TYPE_1__ dsl_dataset_user_hold_arg_t ;


 int KM_SLEEP ;
 int VERIFY (int) ;
 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_dataset_user_hold_check ;
 int dsl_dataset_user_hold_sync ;
 int dsl_sync_task (int ,int ,int ,TYPE_1__*,int ,int ) ;
 int fnvlist_free (int ) ;
 int fnvlist_num_pairs (int *) ;
 scalar_t__ nvlist_alloc (int *,int ,int ) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;

int
dsl_dataset_user_hold(nvlist_t *holds, minor_t cleanup_minor, nvlist_t *errlist)
{
 dsl_dataset_user_hold_arg_t dduha;
 nvpair_t *pair;
 int ret;

 pair = nvlist_next_nvpair(holds, ((void*)0));
 if (pair == ((void*)0))
  return (0);

 dduha.dduha_holds = holds;

 VERIFY(0 == nvlist_alloc(&dduha.dduha_chkholds, 0, KM_SLEEP));
 dduha.dduha_errlist = errlist;
 dduha.dduha_minor = cleanup_minor;

 ret = dsl_sync_task(nvpair_name(pair), dsl_dataset_user_hold_check,
     dsl_dataset_user_hold_sync, &dduha,
     fnvlist_num_pairs(holds), ZFS_SPACE_CHECK_RESERVED);
 fnvlist_free(dduha.dduha_chkholds);

 return (ret);
}
