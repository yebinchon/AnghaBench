
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int ZFS_DEBUG_SET_ERROR ;
 int __dprintf (int ,char const*,char const*,int,char*,int) ;
 int zfs_flags ;

void
__set_error(const char *file, const char *func, int line, int err)
{





 if (zfs_flags & ZFS_DEBUG_SET_ERROR)
  __dprintf(B_FALSE, file, func, line, "error %lu", err);
}
