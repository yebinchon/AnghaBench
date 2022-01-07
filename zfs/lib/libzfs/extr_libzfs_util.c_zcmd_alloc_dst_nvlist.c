
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t zc_nvlist_dst_size; scalar_t__ zc_nvlist_dst; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int libzfs_handle_t ;


 scalar_t__ zfs_alloc (int *,size_t) ;

int
zcmd_alloc_dst_nvlist(libzfs_handle_t *hdl, zfs_cmd_t *zc, size_t len)
{
 if (len == 0)
  len = 256 * 1024;
 zc->zc_nvlist_dst_size = len;
 zc->zc_nvlist_dst =
     (uint64_t)(uintptr_t)zfs_alloc(hdl, zc->zc_nvlist_dst_size);
 if (zc->zc_nvlist_dst == 0)
  return (-1);

 return (0);
}
