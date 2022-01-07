
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_SHARE ;
 int share_mount (int ,int,char**) ;

__attribute__((used)) static int
zfs_do_share(int argc, char **argv)
{
 return (share_mount(OP_SHARE, argc, argv));
}
