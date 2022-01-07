
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_10__ {int wk_key; } ;
typedef TYPE_1__ dsl_wrapping_key_t ;
struct TYPE_11__ {int dck_holds; int dck_obj; TYPE_1__* dck_wkey; int dck_key; } ;
typedef TYPE_2__ dsl_crypto_key_t ;


 int DSL_CRYPTO_KEY_CRYPTO_SUITE ;
 int DSL_CRYPTO_KEY_GUID ;
 int DSL_CRYPTO_KEY_HMAC_KEY ;
 int DSL_CRYPTO_KEY_IV ;
 int DSL_CRYPTO_KEY_MAC ;
 int DSL_CRYPTO_KEY_MASTER_KEY ;
 int DSL_CRYPTO_KEY_VERSION ;
 int EACCES ;
 int ENOMEM ;
 int KM_SLEEP ;
 int MASTER_KEY_MAX_LEN ;
 int SET_ERROR (int ) ;
 int SHA512_HMAC_KEYLEN ;
 int WRAPPING_IV_LEN ;
 int WRAPPING_MAC_LEN ;
 int bzero (TYPE_2__*,int) ;
 int dsl_wrapping_key_hold (TYPE_1__*,TYPE_2__*) ;
 int kmem_free (TYPE_2__*,int) ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int zap_lookup (int *,int ,int ,int,int,int *) ;
 int zfs_refcount_add (int *,void*) ;
 int zfs_refcount_create (int *) ;
 int zio_crypt_key_unwrap (int *,int ,int ,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int
dsl_crypto_key_open(objset_t *mos, dsl_wrapping_key_t *wkey,
    uint64_t dckobj, void *tag, dsl_crypto_key_t **dck_out)
{
 int ret;
 uint64_t crypt = 0, guid = 0, version = 0;
 uint8_t raw_keydata[MASTER_KEY_MAX_LEN];
 uint8_t raw_hmac_keydata[SHA512_HMAC_KEYLEN];
 uint8_t iv[WRAPPING_IV_LEN];
 uint8_t mac[WRAPPING_MAC_LEN];
 dsl_crypto_key_t *dck;


 dck = kmem_zalloc(sizeof (dsl_crypto_key_t), KM_SLEEP);
 if (!dck)
  return (SET_ERROR(ENOMEM));


 ret = zap_lookup(mos, dckobj, DSL_CRYPTO_KEY_CRYPTO_SUITE, 8, 1,
     &crypt);
 if (ret != 0)
  goto error;

 ret = zap_lookup(mos, dckobj, DSL_CRYPTO_KEY_GUID, 8, 1, &guid);
 if (ret != 0)
  goto error;

 ret = zap_lookup(mos, dckobj, DSL_CRYPTO_KEY_MASTER_KEY, 1,
     MASTER_KEY_MAX_LEN, raw_keydata);
 if (ret != 0)
  goto error;

 ret = zap_lookup(mos, dckobj, DSL_CRYPTO_KEY_HMAC_KEY, 1,
     SHA512_HMAC_KEYLEN, raw_hmac_keydata);
 if (ret != 0)
  goto error;

 ret = zap_lookup(mos, dckobj, DSL_CRYPTO_KEY_IV, 1, WRAPPING_IV_LEN,
     iv);
 if (ret != 0)
  goto error;

 ret = zap_lookup(mos, dckobj, DSL_CRYPTO_KEY_MAC, 1, WRAPPING_MAC_LEN,
     mac);
 if (ret != 0)
  goto error;


 (void) zap_lookup(mos, dckobj, DSL_CRYPTO_KEY_VERSION, 8, 1, &version);





 ret = zio_crypt_key_unwrap(&wkey->wk_key, crypt, version, guid,
     raw_keydata, raw_hmac_keydata, iv, mac, &dck->dck_key);
 if (ret != 0) {
  ret = SET_ERROR(EACCES);
  goto error;
 }


 zfs_refcount_create(&dck->dck_holds);
 dsl_wrapping_key_hold(wkey, dck);
 dck->dck_wkey = wkey;
 dck->dck_obj = dckobj;
 zfs_refcount_add(&dck->dck_holds, tag);

 *dck_out = dck;
 return (0);

error:
 if (dck != ((void*)0)) {
  bzero(dck, sizeof (dsl_crypto_key_t));
  kmem_free(dck, sizeof (dsl_crypto_key_t));
 }

 *dck_out = ((void*)0);
 return (ret);
}
