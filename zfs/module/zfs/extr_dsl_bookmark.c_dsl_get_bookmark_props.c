
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ zfs_bookmark_phys_t ;
typedef int nvlist_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int FTAG ;
 int dsl_bookmark_fetch_props (int *,TYPE_1__*,int *,int *) ;
 int dsl_bookmark_lookup_impl (int *,char const*,TYPE_1__*) ;
 int dsl_dataset_hold (int *,char const*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;

int
dsl_get_bookmark_props(const char *dsname, const char *bmname, nvlist_t *props)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 zfs_bookmark_phys_t bmark_phys = { 0 };
 int err;

 err = dsl_pool_hold(dsname, FTAG, &dp);
 if (err != 0)
  return (err);
 err = dsl_dataset_hold(dp, dsname, FTAG, &ds);
 if (err != 0) {
  dsl_pool_rele(dp, FTAG);
  return (err);
 }

 err = dsl_bookmark_lookup_impl(ds, bmname, &bmark_phys);
 if (err != 0)
  goto out;

 dsl_bookmark_fetch_props(dp, &bmark_phys, ((void*)0), props);
out:
 dsl_dataset_rele(ds, FTAG);
 dsl_pool_rele(dp, FTAG);
 return (err);
}
