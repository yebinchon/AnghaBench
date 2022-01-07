
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ uio_segflg; size_t uio_iovcnt; TYPE_1__* uio_iov; } ;
typedef TYPE_2__ uio_t ;
typedef size_t uint_t ;
typedef int uchar_t ;
typedef scalar_t__ off_t ;
struct TYPE_7__ {scalar_t__ cd_offset; scalar_t__ cd_format; int cd_length; TYPE_2__* cd_uio; } ;
typedef TYPE_3__ crypto_data_t ;
typedef int cmd_type_t ;
struct TYPE_5__ {scalar_t__ iov_len; scalar_t__ iov_base; } ;


 int ASSERT (int) ;



 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BUFFER_TOO_SMALL ;
 int CRYPTO_DATA_LEN_RANGE ;
 scalar_t__ CRYPTO_DATA_UIO ;
 int CRYPTO_SIGNATURE_INVALID ;
 int CRYPTO_SUCCESS ;


 size_t MIN (scalar_t__,size_t) ;


 scalar_t__ UIO_SYSSPACE ;
 int bcmp (int *,int *,size_t) ;
 int bcopy (int *,int *,size_t) ;

int
crypto_uio_data(crypto_data_t *data, uchar_t *buf, int len, cmd_type_t cmd,
    void *digest_ctx, void (*update)(void))
{
 uio_t *uiop = data->cd_uio;
 off_t offset = data->cd_offset;
 size_t length = len;
 uint_t vec_idx;
 size_t cur_len;
 uchar_t *datap;

 ASSERT(data->cd_format == CRYPTO_DATA_UIO);
 if (uiop->uio_segflg != UIO_SYSSPACE) {
  return (CRYPTO_ARGUMENTS_BAD);
 }





 for (vec_idx = 0; vec_idx < uiop->uio_iovcnt &&
     offset >= uiop->uio_iov[vec_idx].iov_len;
     offset -= uiop->uio_iov[vec_idx++].iov_len)
  ;

 if (vec_idx == uiop->uio_iovcnt && length > 0) {




  return (CRYPTO_DATA_LEN_RANGE);
 }

 while (vec_idx < uiop->uio_iovcnt && length > 0) {
  cur_len = MIN(uiop->uio_iov[vec_idx].iov_len -
      offset, length);

  datap = (uchar_t *)(uiop->uio_iov[vec_idx].iov_base +
      offset);
  switch (cmd) {
  case 133:
   bcopy(datap, buf, cur_len);
   buf += cur_len;
   break;
  case 132:
   bcopy(buf, datap, cur_len);
   buf += cur_len;
   break;
  case 134:
   if (bcmp(datap, buf, cur_len))
    return (CRYPTO_SIGNATURE_INVALID);
   buf += cur_len;
   break;
  case 130:
  case 129:
  case 128:
  case 131:
   return (CRYPTO_ARGUMENTS_BAD);
  }

  length -= cur_len;
  vec_idx++;
  offset = 0;
 }

 if (vec_idx == uiop->uio_iovcnt && length > 0) {




  switch (cmd) {
  case 132:
   data->cd_length = len;
   return (CRYPTO_BUFFER_TOO_SMALL);
  default:
   return (CRYPTO_DATA_LEN_RANGE);
  }
 }

 return (CRYPTO_SUCCESS);
}
