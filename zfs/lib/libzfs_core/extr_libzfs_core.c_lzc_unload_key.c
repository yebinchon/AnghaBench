
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFS_IOC_UNLOAD_KEY ;
 int lzc_ioctl (int ,char const*,int *,int *) ;

int
lzc_unload_key(const char *fsname)
{
 return (lzc_ioctl(ZFS_IOC_UNLOAD_KEY, fsname, ((void*)0), ((void*)0)));
}
