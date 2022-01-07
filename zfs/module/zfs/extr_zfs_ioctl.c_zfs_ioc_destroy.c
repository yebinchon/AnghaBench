
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* zc_name; int zc_defer_destroy; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;
typedef int namebuf ;
typedef scalar_t__ dmu_objset_type_t ;


 scalar_t__ DMU_OST_ZFS ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int FTAG ;
 int SET_ERROR (int) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_objset_hold (char*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 scalar_t__ dmu_objset_type (int *) ;
 int dsl_destroy_head (char*) ;
 int dsl_destroy_snapshot (char*,int ) ;
 char* recv_clone_name ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 int zfs_unmount_snap (char*) ;

__attribute__((used)) static int
zfs_ioc_destroy(zfs_cmd_t *zc)
{
 objset_t *os;
 dmu_objset_type_t ost;
 int err;

 err = dmu_objset_hold(zc->zc_name, FTAG, &os);
 if (err != 0)
  return (err);
 ost = dmu_objset_type(os);
 dmu_objset_rele(os, FTAG);

 if (ost == DMU_OST_ZFS)
  zfs_unmount_snap(zc->zc_name);

 if (strchr(zc->zc_name, '@')) {
  err = dsl_destroy_snapshot(zc->zc_name, zc->zc_defer_destroy);
 } else {
  err = dsl_destroy_head(zc->zc_name);
  if (err == EEXIST) {
   char namebuf[ZFS_MAX_DATASET_NAME_LEN + 6];

   if (snprintf(namebuf, sizeof (namebuf), "%s/%s",
       zc->zc_name, recv_clone_name) >=
       sizeof (namebuf))
    return (SET_ERROR(EINVAL));







   err = dsl_destroy_head(namebuf);
   if (err == 0)
    err = dsl_destroy_head(zc->zc_name);
   else if (err == ENOENT)
    err = SET_ERROR(EEXIST);
  }
 }

 return (err);
}
