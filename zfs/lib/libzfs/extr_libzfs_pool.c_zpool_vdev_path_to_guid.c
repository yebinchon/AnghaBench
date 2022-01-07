
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int uint64_t ;


 int zpool_vdev_path_to_guid_impl (int *,char const*,int *,int *,int *) ;

uint64_t
zpool_vdev_path_to_guid(zpool_handle_t *zhp, const char *path)
{
 return (zpool_vdev_path_to_guid_impl(zhp, path, ((void*)0), ((void*)0), ((void*)0)));
}
