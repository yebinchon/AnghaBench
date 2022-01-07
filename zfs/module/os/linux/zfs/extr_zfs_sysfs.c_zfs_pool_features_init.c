
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zko_kobj; } ;
typedef TYPE_1__ zfs_mod_kobj_t ;
struct kobject {int dummy; } ;
typedef size_t spa_feature_t ;
struct TYPE_8__ {int fi_guid; } ;


 size_t SPA_FEATURES ;
 int ZFS_SYSFS_POOL_FEATURES ;
 int pool_feature_show ;
 int pool_feature_to_kobj (TYPE_1__*,size_t,int ) ;
 TYPE_5__* spa_feature_table ;
 int zfs_kobj_add (TYPE_1__*,struct kobject*,int ) ;
 int zfs_kobj_init (TYPE_1__*,int ,size_t,int ) ;
 int zfs_kobj_release (int *) ;

__attribute__((used)) static int
zfs_pool_features_init(zfs_mod_kobj_t *zfs_kobj, struct kobject *parent)
{





 int err = zfs_kobj_init(zfs_kobj, 0, SPA_FEATURES, pool_feature_show);
 if (err)
  return (err);
 err = zfs_kobj_add(zfs_kobj, parent, ZFS_SYSFS_POOL_FEATURES);
 if (err) {
  zfs_kobj_release(&zfs_kobj->zko_kobj);
  return (err);
 }






 for (spa_feature_t i = 0; i < SPA_FEATURES; i++)
  pool_feature_to_kobj(zfs_kobj, i, spa_feature_table[i].fi_guid);

 return (0);
}
