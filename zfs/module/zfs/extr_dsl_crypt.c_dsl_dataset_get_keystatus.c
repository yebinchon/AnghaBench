
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_keystatus_t ;
struct TYPE_4__ {scalar_t__ dd_crypto_obj; } ;
typedef TYPE_1__ dsl_dir_t ;


 int ZFS_KEYSTATUS_AVAILABLE ;
 int ZFS_KEYSTATUS_NONE ;
 int ZFS_KEYSTATUS_UNAVAILABLE ;
 scalar_t__ dmu_objset_check_wkey_loaded (TYPE_1__*) ;

__attribute__((used)) static zfs_keystatus_t
dsl_dataset_get_keystatus(dsl_dir_t *dd)
{

 if (dd->dd_crypto_obj == 0)
  return (ZFS_KEYSTATUS_NONE);

 return (dmu_objset_check_wkey_loaded(dd) == 0 ?
     ZFS_KEYSTATUS_AVAILABLE : ZFS_KEYSTATUS_UNAVAILABLE);
}
