
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_keyformat_t ;
typedef int uint8_t ;
typedef void* uint64_t ;
struct TYPE_5__ {void* ck_data; int ck_length; int ck_format; } ;
struct TYPE_6__ {void* wk_iters; void* wk_salt; int wk_keyformat; int wk_refcnt; TYPE_1__ wk_key; } ;
typedef TYPE_2__ dsl_wrapping_key_t ;


 int CRYPTO_BYTES2BITS (int) ;
 int CRYPTO_KEY_RAW ;
 int ENOMEM ;
 int KM_SLEEP ;
 int SET_ERROR (int) ;
 int WRAPPING_KEY_LEN ;
 int bcopy (int *,void*,int) ;
 int dsl_wrapping_key_free (TYPE_2__*) ;
 void* kmem_alloc (int,int ) ;
 int zfs_refcount_create (int *) ;

__attribute__((used)) static int
dsl_wrapping_key_create(uint8_t *wkeydata, zfs_keyformat_t keyformat,
    uint64_t salt, uint64_t iters, dsl_wrapping_key_t **wkey_out)
{
 int ret;
 dsl_wrapping_key_t *wkey;


 wkey = kmem_alloc(sizeof (dsl_wrapping_key_t), KM_SLEEP);
 if (!wkey)
  return (SET_ERROR(ENOMEM));


 wkey->wk_key.ck_data = kmem_alloc(WRAPPING_KEY_LEN, KM_SLEEP);
 if (!wkey->wk_key.ck_data) {
  ret = ENOMEM;
  goto error;
 }

 wkey->wk_key.ck_format = CRYPTO_KEY_RAW;
 wkey->wk_key.ck_length = CRYPTO_BYTES2BITS(WRAPPING_KEY_LEN);
 bcopy(wkeydata, wkey->wk_key.ck_data, WRAPPING_KEY_LEN);


 zfs_refcount_create(&wkey->wk_refcnt);
 wkey->wk_keyformat = keyformat;
 wkey->wk_salt = salt;
 wkey->wk_iters = iters;

 *wkey_out = wkey;
 return (0);

error:
 dsl_wrapping_key_free(wkey);

 *wkey_out = ((void*)0);
 return (ret);
}
