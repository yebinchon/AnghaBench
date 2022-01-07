
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int DSL_CRYPTO_KEY_CRYPTO_SUITE ;
 int DSL_CRYPTO_KEY_GUID ;
 int DSL_CRYPTO_KEY_HMAC_KEY ;
 int DSL_CRYPTO_KEY_IV ;
 int DSL_CRYPTO_KEY_MAC ;
 int DSL_CRYPTO_KEY_MASTER_KEY ;
 int DSL_CRYPTO_KEY_ROOT_DDOBJ ;
 int MASTER_KEY_MAX_LEN ;
 int SHA512_HMAC_KEYLEN ;
 int VERIFY0 (int ) ;
 int WRAPPING_IV_LEN ;
 int WRAPPING_MAC_LEN ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_PBKDF2_ITERS ;
 int ZFS_PROP_PBKDF2_SALT ;
 int zap_update (int *,int ,int ,int,int,int *,int *) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static void
dsl_crypto_key_sync_impl(objset_t *mos, uint64_t dckobj, uint64_t crypt,
    uint64_t root_ddobj, uint64_t guid, uint8_t *iv, uint8_t *mac,
    uint8_t *keydata, uint8_t *hmac_keydata, uint64_t keyformat,
    uint64_t salt, uint64_t iters, dmu_tx_t *tx)
{
 VERIFY0(zap_update(mos, dckobj, DSL_CRYPTO_KEY_CRYPTO_SUITE, 8, 1,
     &crypt, tx));
 VERIFY0(zap_update(mos, dckobj, DSL_CRYPTO_KEY_ROOT_DDOBJ, 8, 1,
     &root_ddobj, tx));
 VERIFY0(zap_update(mos, dckobj, DSL_CRYPTO_KEY_GUID, 8, 1,
     &guid, tx));
 VERIFY0(zap_update(mos, dckobj, DSL_CRYPTO_KEY_IV, 1, WRAPPING_IV_LEN,
     iv, tx));
 VERIFY0(zap_update(mos, dckobj, DSL_CRYPTO_KEY_MAC, 1, WRAPPING_MAC_LEN,
     mac, tx));
 VERIFY0(zap_update(mos, dckobj, DSL_CRYPTO_KEY_MASTER_KEY, 1,
     MASTER_KEY_MAX_LEN, keydata, tx));
 VERIFY0(zap_update(mos, dckobj, DSL_CRYPTO_KEY_HMAC_KEY, 1,
     SHA512_HMAC_KEYLEN, hmac_keydata, tx));
 VERIFY0(zap_update(mos, dckobj, zfs_prop_to_name(ZFS_PROP_KEYFORMAT),
     8, 1, &keyformat, tx));
 VERIFY0(zap_update(mos, dckobj, zfs_prop_to_name(ZFS_PROP_PBKDF2_SALT),
     8, 1, &salt, tx));
 VERIFY0(zap_update(mos, dckobj, zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS),
     8, 1, &iters, tx));
}
