
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uchar_t ;
struct TYPE_5__ {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_6__ {int cd_format; int cd_length; scalar_t__ cd_offset; TYPE_1__ cd_raw; } ;
typedef TYPE_2__ crypto_data_t ;


 int COPY_TO_DATA ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BUFFER_TOO_SMALL ;


 int CRYPTO_SUCCESS ;
 int bcopy (int *,int *,int) ;
 int crypto_uio_data (TYPE_2__*,int *,int,int ,int *,int *) ;

int
crypto_put_output_data(uchar_t *buf, crypto_data_t *output, int len)
{
 switch (output->cd_format) {
 case 129:
  if (output->cd_raw.iov_len < len) {
   output->cd_length = len;
   return (CRYPTO_BUFFER_TOO_SMALL);
  }
  bcopy(buf, (uchar_t *)(output->cd_raw.iov_base +
      output->cd_offset), len);
  break;

 case 128:
  return (crypto_uio_data(output, buf, len,
      COPY_TO_DATA, ((void*)0), ((void*)0)));
 default:
  return (CRYPTO_ARGUMENTS_BAD);
 }

 return (CRYPTO_SUCCESS);
}
