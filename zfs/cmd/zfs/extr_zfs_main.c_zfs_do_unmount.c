
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_MOUNT ;
 int unshare_unmount (int ,int,char**) ;

__attribute__((used)) static int
zfs_do_unmount(int argc, char **argv)
{
 return (unshare_unmount(OP_MOUNT, argc, argv));
}
