
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* ddra_oldname; char const* ddra_newname; int ddra_cred; } ;
typedef TYPE_1__ dsl_dir_rename_arg_t ;


 int CRED () ;
 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_dir_rename_check ;
 int dsl_dir_rename_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;

int
dsl_dir_rename(const char *oldname, const char *newname)
{
 dsl_dir_rename_arg_t ddra;

 ddra.ddra_oldname = oldname;
 ddra.ddra_newname = newname;
 ddra.ddra_cred = CRED();

 return (dsl_sync_task(oldname,
     dsl_dir_rename_check, dsl_dir_rename_sync, &ddra,
     3, ZFS_SPACE_CHECK_RESERVED));
}
