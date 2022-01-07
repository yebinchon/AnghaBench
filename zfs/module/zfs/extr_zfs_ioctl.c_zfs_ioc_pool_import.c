
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zc_nvlist_conf_size; scalar_t__ zc_nvlist_src_size; scalar_t__ zc_guid; scalar_t__ zc_nvlist_dst; int zc_cookie; int zc_name; int zc_iflags; int zc_nvlist_src; int zc_nvlist_conf; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int get_nvlist (int ,scalar_t__,int ,int **) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int put_nvlist (TYPE_1__*,int *) ;
 int spa_import (int ,int *,int *,int ) ;

__attribute__((used)) static int
zfs_ioc_pool_import(zfs_cmd_t *zc)
{
 nvlist_t *config, *props = ((void*)0);
 uint64_t guid;
 int error;

 if ((error = get_nvlist(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
     zc->zc_iflags, &config)) != 0)
  return (error);

 if (zc->zc_nvlist_src_size != 0 && (error =
     get_nvlist(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
     zc->zc_iflags, &props))) {
  nvlist_free(config);
  return (error);
 }

 if (nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_GUID, &guid) != 0 ||
     guid != zc->zc_guid)
  error = SET_ERROR(EINVAL);
 else
  error = spa_import(zc->zc_name, config, props, zc->zc_cookie);

 if (zc->zc_nvlist_dst != 0) {
  int err;

  if ((err = put_nvlist(zc, config)) != 0)
   error = err;
 }

 nvlist_free(config);
 nvlist_free(props);

 return (error);
}
