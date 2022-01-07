
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int dsl_pool_t ;
struct TYPE_5__ {scalar_t__ dd_crypto_obj; scalar_t__ dd_object; } ;
typedef TYPE_1__ dsl_dir_t ;


 int B_TRUE ;
 int EACCES ;
 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dsl_dir_get_encryption_root_ddobj (TYPE_1__*,scalar_t__*) ;
 int dsl_dir_hold (int *,char const*,int ,TYPE_1__**,int *) ;
 int dsl_dir_rele (TYPE_1__*,int ) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int zfs_prop_valid_keylocation (char const*,int ) ;

int
dsl_crypto_can_set_keylocation(const char *dsname, const char *keylocation)
{
 int ret = 0;
 dsl_dir_t *dd = ((void*)0);
 dsl_pool_t *dp = ((void*)0);
 uint64_t rddobj;


 ret = dsl_pool_hold(dsname, FTAG, &dp);
 if (ret != 0)
  goto out;

 ret = dsl_dir_hold(dp, dsname, FTAG, &dd, ((void*)0));
 if (ret != 0) {
  dd = ((void*)0);
  goto out;
 }


 if (dd->dd_crypto_obj == 0) {
  if (strcmp(keylocation, "none") != 0) {
   ret = SET_ERROR(EACCES);
   goto out;
  }

  ret = 0;
  goto out;
 }


 if (!zfs_prop_valid_keylocation(keylocation, B_TRUE)) {
  ret = SET_ERROR(EINVAL);
  goto out;
 }


 ret = dsl_dir_get_encryption_root_ddobj(dd, &rddobj);
 if (ret != 0)
  goto out;

 if (rddobj != dd->dd_object) {
  ret = SET_ERROR(EACCES);
  goto out;
 }

 dsl_dir_rele(dd, FTAG);
 dsl_pool_rele(dp, FTAG);

 return (0);

out:
 if (dd != ((void*)0))
  dsl_dir_rele(dd, FTAG);
 if (dp != ((void*)0))
  dsl_pool_rele(dp, FTAG);

 return (ret);
}
