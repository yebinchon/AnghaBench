
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_MOUNT ;
 int share_mount (int ,int,char**) ;

__attribute__((used)) static int
zfs_do_mount(int argc, char **argv)
{
 return (share_mount(OP_MOUNT, argc, argv));
}
