
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EALREADY ;
 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_dir_actv_fs_ss_limit_check ;
 int dsl_dir_actv_fs_ss_limit_sync ;
 int dsl_sync_task (char const*,int ,int ,void*,int ,int ) ;

int
dsl_dir_activate_fs_ss_limit(const char *ddname)
{
 int error;

 error = dsl_sync_task(ddname, dsl_dir_actv_fs_ss_limit_check,
     dsl_dir_actv_fs_ss_limit_sync, (void *)ddname, 0,
     ZFS_SPACE_CHECK_RESERVED);

 if (error == EALREADY)
  error = 0;

 return (error);
}
