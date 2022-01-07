
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zb_objset; } ;
typedef TYPE_1__ zbookmark_phys_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef int spa_t ;
struct TYPE_8__ {int dck_key; } ;
typedef TYPE_2__ dsl_crypto_key_t ;
typedef int dmu_object_type_t ;
typedef scalar_t__ boolean_t ;
typedef int abd_t ;


 int ASSERT (int ) ;
 int DMU_OT_DNODE ;
 int DMU_OT_INTENT_LOG ;
 int EACCES ;
 int ECKSUM ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_ENCRYPTION ;
 int ZIO_DATA_IV_LEN ;
 int ZIO_DATA_MAC_LEN ;
 int ZIO_DATA_SALT_LEN ;
 int * abd_borrow_buf (int *,int ) ;
 int * abd_borrow_buf_copy (int *,int ) ;
 int abd_return_buf (int *,int *,int ) ;
 int abd_return_buf_copy (int *,int *,int ) ;
 int bzero (int *,int ) ;
 int spa_feature_is_active (int *,int ) ;
 int spa_keystore_dsl_key_rele (int *,TYPE_2__*,int ) ;
 int spa_keystore_lookup_key (int *,int ,int ,TYPE_2__**) ;
 int zio_crypt_generate_iv (int *) ;
 int zio_crypt_generate_iv_salt_dedup (int *,int *,int ,int *,int *) ;
 int zio_crypt_key_get_salt (int *,int *) ;
 int zio_do_crypt_data (scalar_t__,int *,int ,scalar_t__,int *,int *,int *,int ,int *,int *,scalar_t__*) ;
 int zio_handle_decrypt_injection (int *,TYPE_1__ const*,int ,int ) ;
 scalar_t__ zio_injection_enabled ;

int
spa_do_crypt_abd(boolean_t encrypt, spa_t *spa, const zbookmark_phys_t *zb,
    dmu_object_type_t ot, boolean_t dedup, boolean_t bswap, uint8_t *salt,
    uint8_t *iv, uint8_t *mac, uint_t datalen, abd_t *pabd, abd_t *cabd,
    boolean_t *no_crypt)
{
 int ret;
 dsl_crypto_key_t *dck = ((void*)0);
 uint8_t *plainbuf = ((void*)0), *cipherbuf = ((void*)0);

 ASSERT(spa_feature_is_active(spa, SPA_FEATURE_ENCRYPTION));


 ret = spa_keystore_lookup_key(spa, zb->zb_objset, FTAG, &dck);
 if (ret != 0) {
  ret = SET_ERROR(EACCES);
  return (ret);
 }

 if (encrypt) {
  plainbuf = abd_borrow_buf_copy(pabd, datalen);
  cipherbuf = abd_borrow_buf(cabd, datalen);
 } else {
  plainbuf = abd_borrow_buf(pabd, datalen);
  cipherbuf = abd_borrow_buf_copy(cabd, datalen);
 }
 if (encrypt && ot != DMU_OT_INTENT_LOG && !dedup) {
  ret = zio_crypt_key_get_salt(&dck->dck_key, salt);
  if (ret != 0)
   goto error;

  ret = zio_crypt_generate_iv(iv);
  if (ret != 0)
   goto error;
 } else if (encrypt && dedup) {
  ret = zio_crypt_generate_iv_salt_dedup(&dck->dck_key,
      plainbuf, datalen, iv, salt);
  if (ret != 0)
   goto error;
 }


 ret = zio_do_crypt_data(encrypt, &dck->dck_key, ot, bswap, salt, iv,
     mac, datalen, plainbuf, cipherbuf, no_crypt);







 if (zio_injection_enabled && !encrypt && ot != DMU_OT_DNODE && ret == 0)
  ret = zio_handle_decrypt_injection(spa, zb, ot, ECKSUM);
 if (ret != 0)
  goto error;

 if (encrypt) {
  abd_return_buf(pabd, plainbuf, datalen);
  abd_return_buf_copy(cabd, cipherbuf, datalen);
 } else {
  abd_return_buf_copy(pabd, plainbuf, datalen);
  abd_return_buf(cabd, cipherbuf, datalen);
 }

 spa_keystore_dsl_key_rele(spa, dck, FTAG);

 return (0);

error:
 if (encrypt) {

  bzero(salt, ZIO_DATA_SALT_LEN);
  bzero(iv, ZIO_DATA_IV_LEN);
  bzero(mac, ZIO_DATA_MAC_LEN);
  abd_return_buf(pabd, plainbuf, datalen);
  abd_return_buf_copy(cabd, cipherbuf, datalen);
 } else {
  abd_return_buf_copy(pabd, plainbuf, datalen);
  abd_return_buf(cabd, cipherbuf, datalen);
 }

 spa_keystore_dsl_key_rele(spa, dck, FTAG);

 return (ret);
}
