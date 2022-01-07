
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int uio_iovcnt; int * uio_iov; void* uio_segflg; } ;
typedef TYPE_1__ uio_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_12__ {int iov_len; int * iov_base; } ;
typedef TYPE_2__ iovec_t ;
typedef int dmu_object_type_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;


 scalar_t__ DMU_OT_IS_ENCRYPTED (int) ;
 int DMU_OT_NONE ;
 void* UIO_SYSSPACE ;
 int ZIO_DATA_MAC_LEN ;
 int zio_crypt_init_uios_dnode (int ,int ,int *,int *,int ,int ,TYPE_1__*,TYPE_1__*,int *,int **,int *,int *) ;
 int zio_crypt_init_uios_normal (int ,int *,int *,int ,TYPE_1__*,TYPE_1__*,int *) ;
 int zio_crypt_init_uios_zil (int ,int *,int *,int ,int ,TYPE_1__*,TYPE_1__*,int *,int **,int *,int *) ;

__attribute__((used)) static int
zio_crypt_init_uios(boolean_t encrypt, uint64_t version, dmu_object_type_t ot,
    uint8_t *plainbuf, uint8_t *cipherbuf, uint_t datalen, boolean_t byteswap,
    uint8_t *mac, uio_t *puio, uio_t *cuio, uint_t *enc_len, uint8_t **authbuf,
    uint_t *auth_len, boolean_t *no_crypt)
{
 int ret;
 iovec_t *mac_iov;

 ASSERT(DMU_OT_IS_ENCRYPTED(ot) || ot == DMU_OT_NONE);


 switch (ot) {
 case 128:
  ret = zio_crypt_init_uios_zil(encrypt, plainbuf, cipherbuf,
      datalen, byteswap, puio, cuio, enc_len, authbuf, auth_len,
      no_crypt);
  break;
 case 129:
  ret = zio_crypt_init_uios_dnode(encrypt, version, plainbuf,
      cipherbuf, datalen, byteswap, puio, cuio, enc_len, authbuf,
      auth_len, no_crypt);
  break;
 default:
  ret = zio_crypt_init_uios_normal(encrypt, plainbuf, cipherbuf,
      datalen, puio, cuio, enc_len);
  *authbuf = ((void*)0);
  *auth_len = 0;
  *no_crypt = B_FALSE;
  break;
 }

 if (ret != 0)
  goto error;


 puio->uio_segflg = UIO_SYSSPACE;
 cuio->uio_segflg = UIO_SYSSPACE;

 mac_iov = ((iovec_t *)&cuio->uio_iov[cuio->uio_iovcnt - 1]);
 mac_iov->iov_base = mac;
 mac_iov->iov_len = ZIO_DATA_MAC_LEN;

 return (0);

error:
 return (ret);
}
