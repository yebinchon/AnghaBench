
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* member_0; int zc_nvlist_conf_size; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int CONFIG_BUF_MINSIZE ;
 scalar_t__ ENOMEM ;
 int MAX (int ,int) ;
 int ZFS_IOC_POOL_TRYIMPORT ;
 scalar_t__ errno ;
 scalar_t__ zcmd_alloc_dst_nvlist (int *,TYPE_1__*,int) ;
 scalar_t__ zcmd_expand_dst_nvlist (int *,TYPE_1__*) ;
 int zcmd_free_nvlists (TYPE_1__*) ;
 scalar_t__ zcmd_read_dst_nvlist (int *,TYPE_1__*,int **) ;
 scalar_t__ zcmd_write_conf_nvlist (int *,TYPE_1__*,int *) ;
 int zfs_ioctl (int *,int ,TYPE_1__*) ;

__attribute__((used)) static nvlist_t *
refresh_config(libzfs_handle_t *hdl, nvlist_t *config)
{
 nvlist_t *nvl;
 zfs_cmd_t zc = {"\0"};
 int err, dstbuf_size;

 if (zcmd_write_conf_nvlist(hdl, &zc, config) != 0)
  return (((void*)0));

 dstbuf_size = MAX(CONFIG_BUF_MINSIZE, zc.zc_nvlist_conf_size * 4);

 if (zcmd_alloc_dst_nvlist(hdl, &zc, dstbuf_size) != 0) {
  zcmd_free_nvlists(&zc);
  return (((void*)0));
 }

 while ((err = zfs_ioctl(hdl, ZFS_IOC_POOL_TRYIMPORT,
     &zc)) != 0 && errno == ENOMEM) {
  if (zcmd_expand_dst_nvlist(hdl, &zc) != 0) {
   zcmd_free_nvlists(&zc);
   return (((void*)0));
  }
 }

 if (err) {
  zcmd_free_nvlists(&zc);
  return (((void*)0));
 }

 if (zcmd_read_dst_nvlist(hdl, &zc, &nvl) != 0) {
  zcmd_free_nvlists(&zc);
  return (((void*)0));
 }

 zcmd_free_nvlists(&zc);
 return (nvl);
}
