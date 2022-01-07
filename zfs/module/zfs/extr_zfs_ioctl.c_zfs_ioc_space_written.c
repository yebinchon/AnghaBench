
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_perm_action; int zc_objset_type; int zc_cookie; int zc_value; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int zfs_bookmark_phys_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int FTAG ;
 int dsl_bookmark_lookup (int *,int ,int *,int *) ;
 int dsl_dataset_hold (int *,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dataset_space_written (int *,int *,int *,int *,int *) ;
 int dsl_dataset_space_written_bookmark (int *,int *,int *,int *,int *) ;
 int dsl_pool_hold (int ,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 int * strchr (int ,char) ;

__attribute__((used)) static int
zfs_ioc_space_written(zfs_cmd_t *zc)
{
 int error;
 dsl_pool_t *dp;
 dsl_dataset_t *new;

 error = dsl_pool_hold(zc->zc_name, FTAG, &dp);
 if (error != 0)
  return (error);
 error = dsl_dataset_hold(dp, zc->zc_name, FTAG, &new);
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }
 if (strchr(zc->zc_value, '#') != ((void*)0)) {
  zfs_bookmark_phys_t bmp;
  error = dsl_bookmark_lookup(dp, zc->zc_value,
      new, &bmp);
  if (error == 0) {
   error = dsl_dataset_space_written_bookmark(&bmp, new,
       &zc->zc_cookie,
       &zc->zc_objset_type, &zc->zc_perm_action);
  }
 } else {
  dsl_dataset_t *old;
  error = dsl_dataset_hold(dp, zc->zc_value, FTAG, &old);

  if (error == 0) {
   error = dsl_dataset_space_written(old, new,
       &zc->zc_cookie,
       &zc->zc_objset_type, &zc->zc_perm_action);
   dsl_dataset_rele(old, FTAG);
  }
 }
 dsl_dataset_rele(new, FTAG);
 dsl_pool_rele(dp, FTAG);
 return (error);
}
