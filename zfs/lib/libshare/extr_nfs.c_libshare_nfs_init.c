
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs_fstype ;
 int nfs_shareops ;
 int register_fstype (char*,int *) ;

void
libshare_nfs_init(void)
{
 nfs_fstype = register_fstype("nfs", &nfs_shareops);
}
