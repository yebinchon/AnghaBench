
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_space_check_t ;
typedef int dsl_syncfunc_t ;
typedef int dsl_checkfunc_t ;


 int B_TRUE ;
 int dsl_sync_task_common (char const*,int *,int *,int *,void*,int,int ,int ) ;

int
dsl_early_sync_task(const char *pool, dsl_checkfunc_t *checkfunc,
    dsl_syncfunc_t *syncfunc, void *arg,
    int blocks_modified, zfs_space_check_t space_check)
{
 return (dsl_sync_task_common(pool, checkfunc, syncfunc, ((void*)0), arg,
     blocks_modified, space_check, B_TRUE));
}
