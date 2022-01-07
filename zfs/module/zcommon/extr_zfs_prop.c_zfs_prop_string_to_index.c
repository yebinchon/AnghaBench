
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int uint64_t ;


 int ZFS_TYPE_DATASET ;
 int zprop_string_to_index (int ,char const*,int *,int ) ;

int
zfs_prop_string_to_index(zfs_prop_t prop, const char *string, uint64_t *index)
{
 return (zprop_string_to_index(prop, string, index, ZFS_TYPE_DATASET));
}
