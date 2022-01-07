
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_cookie; char* zc_name; char* zc_value; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;
typedef scalar_t__ dmu_objset_type_t ;
typedef int boolean_t ;


 scalar_t__ DMU_OST_ZFS ;
 int DS_FIND_CHILDREN ;
 int EINVAL ;
 int EXDEV ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ dataset_namecheck (char*,int *,int *) ;
 int dmu_objset_find (char*,int ,char*,int ) ;
 int dmu_objset_hold (char*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 scalar_t__ dmu_objset_type (int *) ;
 int dsl_dataset_rename_snapshot (char*,char*,char*,int) ;
 int dsl_dir_rename (char*,char*) ;
 int recursive_unmount ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
zfs_ioc_rename(zfs_cmd_t *zc)
{
 objset_t *os;
 dmu_objset_type_t ost;
 boolean_t recursive = zc->zc_cookie & 1;
 char *at;
 int err;


 zc->zc_name[sizeof (zc->zc_name) - 1] = '\0';
 zc->zc_value[sizeof (zc->zc_value) - 1] = '\0';
 if (dataset_namecheck(zc->zc_name, ((void*)0), ((void*)0)) != 0 ||
     dataset_namecheck(zc->zc_value, ((void*)0), ((void*)0)) != 0 ||
     strchr(zc->zc_name, '%') || strchr(zc->zc_value, '%'))
  return (SET_ERROR(EINVAL));

 err = dmu_objset_hold(zc->zc_name, FTAG, &os);
 if (err != 0)
  return (err);
 ost = dmu_objset_type(os);
 dmu_objset_rele(os, FTAG);

 at = strchr(zc->zc_name, '@');
 if (at != ((void*)0)) {

  int error;

  if (strncmp(zc->zc_name, zc->zc_value, at - zc->zc_name + 1))
   return (SET_ERROR(EXDEV));
  *at = '\0';
  if (ost == DMU_OST_ZFS) {
   error = dmu_objset_find(zc->zc_name,
       recursive_unmount, at + 1,
       recursive ? DS_FIND_CHILDREN : 0);
   if (error != 0) {
    *at = '@';
    return (error);
   }
  }
  error = dsl_dataset_rename_snapshot(zc->zc_name,
      at + 1, strchr(zc->zc_value, '@') + 1, recursive);
  *at = '@';

  return (error);
 } else {
  return (dsl_dir_rename(zc->zc_name, zc->zc_value));
 }
}
