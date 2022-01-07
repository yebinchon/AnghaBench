
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_nvlist_conf_size; int zc_nvlist_conf; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int zcmd_write_nvlist_com (int *,int *,int *,int *) ;

int
zcmd_write_conf_nvlist(libzfs_handle_t *hdl, zfs_cmd_t *zc, nvlist_t *nvl)
{
 return (zcmd_write_nvlist_com(hdl, &zc->zc_nvlist_conf,
     &zc->zc_nvlist_conf_size, nvl));
}
