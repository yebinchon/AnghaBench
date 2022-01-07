
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* ddrsa_fsname; char const* ddrsa_oldsnapname; char const* ddrsa_newsnapname; int ddrsa_recursive; } ;
typedef TYPE_1__ dsl_dataset_rename_snapshot_arg_t ;
typedef int boolean_t ;


 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_dataset_rename_snapshot_check ;
 int dsl_dataset_rename_snapshot_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;

int
dsl_dataset_rename_snapshot(const char *fsname,
    const char *oldsnapname, const char *newsnapname, boolean_t recursive)
{
 dsl_dataset_rename_snapshot_arg_t ddrsa;

 ddrsa.ddrsa_fsname = fsname;
 ddrsa.ddrsa_oldsnapname = oldsnapname;
 ddrsa.ddrsa_newsnapname = newsnapname;
 ddrsa.ddrsa_recursive = recursive;

 return (dsl_sync_task(fsname, dsl_dataset_rename_snapshot_check,
     dsl_dataset_rename_snapshot_sync, &ddrsa,
     1, ZFS_SPACE_CHECK_RESERVED));
}
