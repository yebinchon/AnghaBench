
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_crypt_key_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef int dmu_object_type_t ;
typedef scalar_t__ boolean_t ;
typedef int abd_t ;


 void* abd_borrow_buf (int *,int ) ;
 void* abd_borrow_buf_copy (int *,int ) ;
 int abd_return_buf (int *,void*,int ) ;
 int abd_return_buf_copy (int *,void*,int ) ;
 int zio_do_crypt_data (scalar_t__,int *,int ,scalar_t__,int *,int *,int *,int ,void*,void*,scalar_t__*) ;

int
zio_do_crypt_abd(boolean_t encrypt, zio_crypt_key_t *key, dmu_object_type_t ot,
    boolean_t byteswap, uint8_t *salt, uint8_t *iv, uint8_t *mac,
    uint_t datalen, abd_t *pabd, abd_t *cabd, boolean_t *no_crypt)
{
 int ret;
 void *ptmp, *ctmp;

 if (encrypt) {
  ptmp = abd_borrow_buf_copy(pabd, datalen);
  ctmp = abd_borrow_buf(cabd, datalen);
 } else {
  ptmp = abd_borrow_buf(pabd, datalen);
  ctmp = abd_borrow_buf_copy(cabd, datalen);
 }

 ret = zio_do_crypt_data(encrypt, key, ot, byteswap, salt, iv, mac,
     datalen, ptmp, ctmp, no_crypt);
 if (ret != 0)
  goto error;

 if (encrypt) {
  abd_return_buf(pabd, ptmp, datalen);
  abd_return_buf_copy(cabd, ctmp, datalen);
 } else {
  abd_return_buf_copy(pabd, ptmp, datalen);
  abd_return_buf(cabd, ctmp, datalen);
 }

 return (0);

error:
 if (encrypt) {
  abd_return_buf(pabd, ptmp, datalen);
  abd_return_buf_copy(cabd, ctmp, datalen);
 } else {
  abd_return_buf_copy(pabd, ptmp, datalen);
  abd_return_buf(cabd, ctmp, datalen);
 }

 return (ret);
}
