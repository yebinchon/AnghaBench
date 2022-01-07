
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_5__ {int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {scalar_t__ ds_userrefs_obj; } ;


 int ASSERT (int ) ;
 int E2BIG ;
 int EEXIST ;
 int ENOENT ;
 scalar_t__ MAXNAMELEN ;
 scalar_t__ MAX_TAG_PREFIX_LEN ;
 int SET_ERROR (int ) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 TYPE_3__* dsl_dataset_phys (int *) ;
 int dsl_pool_config_held (TYPE_1__*) ;
 scalar_t__ strlen (char const*) ;
 int zap_lookup (int *,scalar_t__,char const*,int,int,int *) ;

int
dsl_dataset_user_hold_check_one(dsl_dataset_t *ds, const char *htag,
    boolean_t temphold, dmu_tx_t *tx)
{
 dsl_pool_t *dp = dmu_tx_pool(tx);
 objset_t *mos = dp->dp_meta_objset;
 int error = 0;

 ASSERT(dsl_pool_config_held(dp));

 if (strlen(htag) > MAXNAMELEN)
  return (SET_ERROR(E2BIG));

 if (temphold && strlen(htag) + MAX_TAG_PREFIX_LEN >= MAXNAMELEN)
  return (SET_ERROR(E2BIG));


 if (ds != ((void*)0) && dsl_dataset_phys(ds)->ds_userrefs_obj != 0) {
  uint64_t value;

  error = zap_lookup(mos, dsl_dataset_phys(ds)->ds_userrefs_obj,
      htag, 8, 1, &value);
  if (error == 0)
   error = SET_ERROR(EEXIST);
  else if (error == ENOENT)
   error = 0;
 }

 return (error);
}
