
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFS_DRIVER ;
 int libzfs_load_module_impl (int ) ;

int
libzfs_load_module(void)
{
 return (libzfs_load_module_impl(ZFS_DRIVER));
}
