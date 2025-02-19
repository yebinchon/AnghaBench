
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int (* zfs_iter_f ) (TYPE_1__*,void*) ;
struct TYPE_12__ {scalar_t__ zfs_type; int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_13__ {char* member_0; } ;
typedef TYPE_3__ zfs_cmd_t ;


 int ZFS_IOC_DATASET_LIST_NEXT ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 TYPE_1__* make_dataset_handle_zc (int ,TYPE_3__*) ;
 scalar_t__ zcmd_alloc_dst_nvlist (int ,TYPE_3__*,int ) ;
 int zcmd_free_nvlists (TYPE_3__*) ;
 int zfs_do_list_ioctl (TYPE_1__*,int ,TYPE_3__*) ;

int
zfs_iter_filesystems(zfs_handle_t *zhp, zfs_iter_f func, void *data)
{
 zfs_cmd_t zc = {"\0"};
 zfs_handle_t *nzhp;
 int ret;

 if (zhp->zfs_type != ZFS_TYPE_FILESYSTEM)
  return (0);

 if (zcmd_alloc_dst_nvlist(zhp->zfs_hdl, &zc, 0) != 0)
  return (-1);

 while ((ret = zfs_do_list_ioctl(zhp, ZFS_IOC_DATASET_LIST_NEXT,
     &zc)) == 0) {




  if ((nzhp = make_dataset_handle_zc(zhp->zfs_hdl,
      &zc)) == ((void*)0)) {
   continue;
  }

  if ((ret = func(nzhp, data)) != 0) {
   zcmd_free_nvlists(&zc);
   return (ret);
  }
 }
 zcmd_free_nvlists(&zc);
 return ((ret < 0) ? ret : 0);
}
