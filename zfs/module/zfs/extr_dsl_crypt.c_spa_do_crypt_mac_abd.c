
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_4__ {int dck_key; } ;
typedef TYPE_1__ dsl_crypto_key_t ;
typedef scalar_t__ boolean_t ;
typedef int abd_t ;


 int ECKSUM ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int ZIO_DATA_MAC_LEN ;
 int * abd_borrow_buf_copy (int *,int ) ;
 int abd_return_buf (int *,int *,int ) ;
 scalar_t__ bcmp (int *,int *,int) ;
 int bcopy (int *,int *,int) ;
 int spa_keystore_dsl_key_rele (int *,TYPE_1__*,int ) ;
 int spa_keystore_lookup_key (int *,int ,int ,TYPE_1__**) ;
 int zio_crypt_do_hmac (int *,int *,int ,int *,int) ;

int
spa_do_crypt_mac_abd(boolean_t generate, spa_t *spa, uint64_t dsobj, abd_t *abd,
    uint_t datalen, uint8_t *mac)
{
 int ret;
 dsl_crypto_key_t *dck = ((void*)0);
 uint8_t *buf = abd_borrow_buf_copy(abd, datalen);
 uint8_t digestbuf[ZIO_DATA_MAC_LEN];


 ret = spa_keystore_lookup_key(spa, dsobj, FTAG, &dck);
 if (ret != 0)
  goto error;


 ret = zio_crypt_do_hmac(&dck->dck_key, buf, datalen,
     digestbuf, ZIO_DATA_MAC_LEN);
 if (ret != 0)
  goto error;

 abd_return_buf(abd, buf, datalen);
 spa_keystore_dsl_key_rele(spa, dck, FTAG);





 if (generate) {
  bcopy(digestbuf, mac, ZIO_DATA_MAC_LEN);
  return (0);
 }

 if (bcmp(digestbuf, mac, ZIO_DATA_MAC_LEN) != 0)
  return (SET_ERROR(ECKSUM));

 return (0);

error:
 if (dck != ((void*)0))
  spa_keystore_dsl_key_rele(spa, dck, FTAG);
 abd_return_buf(abd, buf, datalen);
 return (ret);
}
