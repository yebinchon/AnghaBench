
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int offsetof (int ,int ) ;
 int procfs_list_install (char*,char*,int,int *,int ,int ,int ,int ) ;
 int zdm_node ;
 int zfs_dbgmsg_clear ;
 int zfs_dbgmsg_show ;
 int zfs_dbgmsg_show_header ;
 int zfs_dbgmsg_t ;
 int zfs_dbgmsgs ;

void
zfs_dbgmsg_init(void)
{
 procfs_list_install("zfs",
     "dbgmsg",
     0600,
     &zfs_dbgmsgs,
     zfs_dbgmsg_show,
     zfs_dbgmsg_show_header,
     zfs_dbgmsg_clear,
     offsetof(zfs_dbgmsg_t, zdm_node));
}
