
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFS_PROP_MOUNTPOINT ;
 int compare_props (void const*,void const*,int ) ;

__attribute__((used)) static int
compare_mountpoints(const void *a, const void *b, void *unused)
{






 return (compare_props(a, b, ZFS_PROP_MOUNTPOINT));
}
