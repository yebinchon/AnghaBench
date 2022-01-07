
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ck_length; int * ck_data; int ck_format; } ;
struct TYPE_7__ {size_t zk_crypt; int zk_salt_lock; int zk_version; int zk_master_keydata; int * zk_current_tmpl; TYPE_2__ zk_current_key; int zk_salt; } ;
typedef TYPE_1__ zio_crypt_key_t ;
typedef int uio_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef size_t uint64_t ;
typedef scalar_t__ dmu_object_type_t ;
typedef TYPE_2__ crypto_key_t ;
typedef int * crypto_ctx_template_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {int ci_keylen; } ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int CPA_STATUS_SUCCESS ;
 int CRYPTO_BYTES2BITS (int) ;
 int CRYPTO_KEY_RAW ;
 scalar_t__ DMU_OT_DNODE ;
 scalar_t__ DMU_OT_INTENT_LOG ;
 int MASTER_KEY_MAX_LEN ;
 int QAT_DECRYPT ;
 int QAT_ENCRYPT ;
 int RW_READER ;
 int ZIO_DATA_SALT_LEN ;
 scalar_t__ bcmp (int *,int ,int ) ;
 int bzero (int *,int) ;
 int hkdf_sha512 (int ,int,int *,int ,int *,int ,int *,int) ;
 int qat_crypt (int ,int *,int *,int *,int ,int *,int *,TYPE_2__*,size_t,int) ;
 scalar_t__ qat_crypt_use_accel (int) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zio_buf_free (int *,int) ;
 int zio_crypt_destroy_uio (int *) ;
 int zio_crypt_init_uios (scalar_t__,int ,scalar_t__,int *,int *,int,scalar_t__,int *,int *,int *,int*,int **,int*,scalar_t__*) ;
 TYPE_5__* zio_crypt_table ;
 int zio_do_crypt_uio (scalar_t__,size_t,TYPE_2__*,int *,int *,int,int *,int *,int *,int) ;

int
zio_do_crypt_data(boolean_t encrypt, zio_crypt_key_t *key,
    dmu_object_type_t ot, boolean_t byteswap, uint8_t *salt, uint8_t *iv,
    uint8_t *mac, uint_t datalen, uint8_t *plainbuf, uint8_t *cipherbuf,
    boolean_t *no_crypt)
{
 int ret;
 boolean_t locked = B_FALSE;
 uint64_t crypt = key->zk_crypt;
 uint_t keydata_len = zio_crypt_table[crypt].ci_keylen;
 uint_t enc_len, auth_len;
 uio_t puio, cuio;
 uint8_t enc_keydata[MASTER_KEY_MAX_LEN];
 crypto_key_t tmp_ckey, *ckey = ((void*)0);
 crypto_ctx_template_t tmpl;
 uint8_t *authbuf = ((void*)0);







 rw_enter(&key->zk_salt_lock, RW_READER);
 locked = B_TRUE;

 if (bcmp(salt, key->zk_salt, ZIO_DATA_SALT_LEN) == 0) {
  ckey = &key->zk_current_key;
  tmpl = key->zk_current_tmpl;
 } else {
  rw_exit(&key->zk_salt_lock);
  locked = B_FALSE;

  ret = hkdf_sha512(key->zk_master_keydata, keydata_len, ((void*)0), 0,
      salt, ZIO_DATA_SALT_LEN, enc_keydata, keydata_len);
  if (ret != 0)
   goto error;

  tmp_ckey.ck_format = CRYPTO_KEY_RAW;
  tmp_ckey.ck_data = enc_keydata;
  tmp_ckey.ck_length = CRYPTO_BYTES2BITS(keydata_len);

  ckey = &tmp_ckey;
  tmpl = ((void*)0);
 }







 if (qat_crypt_use_accel(datalen) &&
     ot != DMU_OT_INTENT_LOG && ot != DMU_OT_DNODE) {
  uint8_t *srcbuf, *dstbuf;

  if (encrypt) {
   srcbuf = plainbuf;
   dstbuf = cipherbuf;
  } else {
   srcbuf = cipherbuf;
   dstbuf = plainbuf;
  }

  ret = qat_crypt((encrypt) ? QAT_ENCRYPT : QAT_DECRYPT, srcbuf,
      dstbuf, ((void*)0), 0, iv, mac, ckey, key->zk_crypt, datalen);
  if (ret == CPA_STATUS_SUCCESS) {
   if (locked) {
    rw_exit(&key->zk_salt_lock);
    locked = B_FALSE;
   }

   return (0);
  }

 }

 bzero(&puio, sizeof (uio_t));
 bzero(&cuio, sizeof (uio_t));


 ret = zio_crypt_init_uios(encrypt, key->zk_version, ot, plainbuf,
     cipherbuf, datalen, byteswap, mac, &puio, &cuio, &enc_len,
     &authbuf, &auth_len, no_crypt);
 if (ret != 0)
  goto error;


 ret = zio_do_crypt_uio(encrypt, key->zk_crypt, ckey, tmpl, iv, enc_len,
     &puio, &cuio, authbuf, auth_len);
 if (ret != 0)
  goto error;

 if (locked) {
  rw_exit(&key->zk_salt_lock);
  locked = B_FALSE;
 }

 if (authbuf != ((void*)0))
  zio_buf_free(authbuf, datalen);
 if (ckey == &tmp_ckey)
  bzero(enc_keydata, keydata_len);
 zio_crypt_destroy_uio(&puio);
 zio_crypt_destroy_uio(&cuio);

 return (0);

error:
 if (locked)
  rw_exit(&key->zk_salt_lock);
 if (authbuf != ((void*)0))
  zio_buf_free(authbuf, datalen);
 if (ckey == &tmp_ckey)
  bzero(enc_keydata, keydata_len);
 zio_crypt_destroy_uio(&puio);
 zio_crypt_destroy_uio(&cuio);

 return (ret);
}
