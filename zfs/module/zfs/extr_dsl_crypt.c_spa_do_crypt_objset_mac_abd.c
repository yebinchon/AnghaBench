
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_5__ {int os_local_mac; int os_portable_mac; } ;
typedef TYPE_1__ objset_phys_t ;
struct TYPE_6__ {int dck_key; } ;
typedef TYPE_2__ dsl_crypto_key_t ;
typedef scalar_t__ boolean_t ;
typedef int abd_t ;


 int ECKSUM ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int ZIO_OBJSET_MAC_LEN ;
 void* abd_borrow_buf_copy (int *,int ) ;
 int abd_return_buf (int *,void*,int ) ;
 int abd_return_buf_copy (int *,void*,int ) ;
 scalar_t__ bcmp (int *,int ,int) ;
 int bcopy (int *,int ,int) ;
 int spa_keystore_dsl_key_rele (int *,TYPE_2__*,int ) ;
 int spa_keystore_lookup_key (int *,int ,int ,TYPE_2__**) ;
 int zio_crypt_do_objset_hmacs (int *,void*,int ,scalar_t__,int *,int *) ;

int
spa_do_crypt_objset_mac_abd(boolean_t generate, spa_t *spa, uint64_t dsobj,
    abd_t *abd, uint_t datalen, boolean_t byteswap)
{
 int ret;
 dsl_crypto_key_t *dck = ((void*)0);
 void *buf = abd_borrow_buf_copy(abd, datalen);
 objset_phys_t *osp = buf;
 uint8_t portable_mac[ZIO_OBJSET_MAC_LEN];
 uint8_t local_mac[ZIO_OBJSET_MAC_LEN];


 ret = spa_keystore_lookup_key(spa, dsobj, FTAG, &dck);
 if (ret != 0)
  goto error;


 ret = zio_crypt_do_objset_hmacs(&dck->dck_key, buf, datalen,
     byteswap, portable_mac, local_mac);
 if (ret != 0)
  goto error;

 spa_keystore_dsl_key_rele(spa, dck, FTAG);


 if (generate) {
  bcopy(portable_mac, osp->os_portable_mac, ZIO_OBJSET_MAC_LEN);
  bcopy(local_mac, osp->os_local_mac, ZIO_OBJSET_MAC_LEN);
  abd_return_buf_copy(abd, buf, datalen);
  return (0);
 }

 if (bcmp(portable_mac, osp->os_portable_mac, ZIO_OBJSET_MAC_LEN) != 0 ||
     bcmp(local_mac, osp->os_local_mac, ZIO_OBJSET_MAC_LEN) != 0) {
  abd_return_buf(abd, buf, datalen);
  return (SET_ERROR(ECKSUM));
 }

 abd_return_buf(abd, buf, datalen);

 return (0);

error:
 if (dck != ((void*)0))
  spa_keystore_dsl_key_rele(spa, dck, FTAG);
 abd_return_buf(abd, buf, datalen);
 return (ret);
}
