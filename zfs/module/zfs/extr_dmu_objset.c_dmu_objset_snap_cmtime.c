
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* os_dsl_dataset; } ;
typedef TYPE_2__ objset_t ;
typedef int inode_timespec_t ;
struct TYPE_4__ {int ds_dir; } ;


 int dsl_dir_snap_cmtime (int ) ;

inode_timespec_t
dmu_objset_snap_cmtime(objset_t *os)
{
 return (dsl_dir_snap_cmtime(os->os_dsl_dataset->ds_dir));
}
