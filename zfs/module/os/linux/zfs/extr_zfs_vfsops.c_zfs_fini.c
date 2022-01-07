
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int system_delay_taskq ;
 int system_taskq ;
 int taskq_wait (int ) ;
 int unregister_filesystem (int *) ;
 int zfs_znode_fini () ;
 int zfsctl_fini () ;
 int zpl_fs_type ;

void
zfs_fini(void)
{



 taskq_wait(system_delay_taskq);
 taskq_wait(system_taskq);
 unregister_filesystem(&zpl_fs_type);
 zfs_znode_fini();
 zfsctl_fini();
}
