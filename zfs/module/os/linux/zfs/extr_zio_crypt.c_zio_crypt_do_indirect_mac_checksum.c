
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint8_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int ECKSUM ;
 int ZIO_CRYPT_KEY_CURRENT_VERSION ;
 int zio_crypt_do_indirect_mac_checksum_impl (int ,void*,int ,int ,int ,int *) ;

int
zio_crypt_do_indirect_mac_checksum(boolean_t generate, void *buf,
    uint_t datalen, boolean_t byteswap, uint8_t *cksum)
{
 int ret;
 ret = zio_crypt_do_indirect_mac_checksum_impl(generate, buf,
     datalen, ZIO_CRYPT_KEY_CURRENT_VERSION, byteswap, cksum);
 if (ret == ECKSUM) {
  ASSERT(!generate);
  ret = zio_crypt_do_indirect_mac_checksum_impl(generate,
      buf, datalen, 0, byteswap, cksum);
 }

 return (ret);
}
