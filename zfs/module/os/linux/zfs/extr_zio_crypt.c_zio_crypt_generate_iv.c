
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ZIO_DATA_IV_LEN ;
 int bzero (int *,int ) ;
 int random_get_pseudo_bytes (int *,int ) ;

int
zio_crypt_generate_iv(uint8_t *ivbuf)
{
 int ret;


 ret = random_get_pseudo_bytes(ivbuf, ZIO_DATA_IV_LEN);
 if (ret != 0)
  goto error;

 return (0);

error:
 bzero(ivbuf, ZIO_DATA_IV_LEN);
 return (ret);
}
