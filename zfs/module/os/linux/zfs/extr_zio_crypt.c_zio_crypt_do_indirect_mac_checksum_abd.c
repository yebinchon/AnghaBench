
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint8_t ;
typedef int boolean_t ;
typedef int abd_t ;


 void* abd_borrow_buf_copy (int *,int ) ;
 int abd_return_buf (int *,void*,int ) ;
 int zio_crypt_do_indirect_mac_checksum (int ,void*,int ,int ,int *) ;

int
zio_crypt_do_indirect_mac_checksum_abd(boolean_t generate, abd_t *abd,
    uint_t datalen, boolean_t byteswap, uint8_t *cksum)
{
 int ret;
 void *buf;

 buf = abd_borrow_buf_copy(abd, datalen);
 ret = zio_crypt_do_indirect_mac_checksum(generate, buf, datalen,
     byteswap, cksum);
 abd_return_buf(abd, buf, datalen);

 return (ret);
}
