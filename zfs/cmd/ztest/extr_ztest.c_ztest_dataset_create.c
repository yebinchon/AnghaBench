
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int dsl_crypto_params_t ;
struct TYPE_2__ {int zo_verbose; } ;


 int B_FALSE ;
 int DCP_CMD_NONE ;
 int DMU_OST_OTHER ;
 int VERIFY0 (int ) ;
 int WRAPPING_KEY_LEN ;
 unsigned long long ZFS_KEYFORMAT_RAW ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYLOCATION ;
 int ZFS_PROP_PBKDF2_ITERS ;
 int ZFS_PROP_PBKDF2_SALT ;
 int ZFS_PROP_SYNC ;
 int ZFS_SYNC_ALWAYS ;
 int ZIO_CRYPT_AES_128_CCM ;
 int ZIO_CRYPT_FUNCTIONS ;
 int ZIO_CRYPT_ON ;
 int aes_impl_set (char*) ;
 int dmu_objset_create (char*,int ,int ,int *,int ,int *) ;
 int dsl_crypto_params_create_nvlist (int ,int *,int *,int **) ;
 int dsl_crypto_params_free (int *,int) ;
 int fnvlist_add_string (int *,int ,char*) ;
 int fnvlist_add_uint64 (int *,int ,unsigned long long) ;
 int fnvlist_add_uint8_array (int *,char*,int *,int ) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int gcm_impl_set (char*) ;
 int printf (char*,char*) ;
 int zfs_prop_to_name (int ) ;
 int ztest_dsl_prop_set_uint64 (char*,int ,int ,int ) ;
 int ztest_objset_create_cb ;
 TYPE_1__ ztest_opts ;
 int ztest_random (int) ;
 scalar_t__ ztest_wkeydata ;

__attribute__((used)) static int
ztest_dataset_create(char *dsname)
{
 int err;
 uint64_t rand;
 dsl_crypto_params_t *dcp = ((void*)0);






 rand = ztest_random(2);
 if (rand != 0) {
  nvlist_t *crypto_args = fnvlist_alloc();
  nvlist_t *props = fnvlist_alloc();


  rand = ztest_random(ZIO_CRYPT_FUNCTIONS);
  if (rand < ZIO_CRYPT_AES_128_CCM)
   rand = ZIO_CRYPT_ON;

  fnvlist_add_uint64(props,
      zfs_prop_to_name(ZFS_PROP_ENCRYPTION), rand);
  fnvlist_add_uint8_array(crypto_args, "wkeydata",
      (uint8_t *)ztest_wkeydata, WRAPPING_KEY_LEN);






  fnvlist_add_uint64(props,
      zfs_prop_to_name(ZFS_PROP_KEYFORMAT), ZFS_KEYFORMAT_RAW);
  fnvlist_add_string(props,
      zfs_prop_to_name(ZFS_PROP_KEYLOCATION), "prompt");
  fnvlist_add_uint64(props,
      zfs_prop_to_name(ZFS_PROP_PBKDF2_SALT), 0ULL);
  fnvlist_add_uint64(props,
      zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS), 0ULL);

  VERIFY0(dsl_crypto_params_create_nvlist(DCP_CMD_NONE, props,
      crypto_args, &dcp));





  VERIFY0(gcm_impl_set("cycle"));
  VERIFY0(aes_impl_set("cycle"));

  fnvlist_free(crypto_args);
  fnvlist_free(props);
 }

 err = dmu_objset_create(dsname, DMU_OST_OTHER, 0, dcp,
     ztest_objset_create_cb, ((void*)0));
 dsl_crypto_params_free(dcp, !!err);

 rand = ztest_random(100);
 if (err || rand < 80)
  return (err);

 if (ztest_opts.zo_verbose >= 5)
  (void) printf("Setting dataset %s to sync always\n", dsname);
 return (ztest_dsl_prop_set_uint64(dsname, ZFS_PROP_SYNC,
     ZFS_SYNC_ALWAYS, B_FALSE));
}
