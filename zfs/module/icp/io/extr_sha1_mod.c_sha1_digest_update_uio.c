
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint_t ;
typedef int uint8_t ;
typedef scalar_t__ off_t ;
struct TYPE_7__ {scalar_t__ cd_offset; size_t cd_length; TYPE_2__* cd_uio; } ;
typedef TYPE_3__ crypto_data_t ;
struct TYPE_6__ {scalar_t__ uio_segflg; size_t uio_iovcnt; TYPE_1__* uio_iov; } ;
struct TYPE_5__ {scalar_t__ iov_len; scalar_t__ iov_base; } ;
typedef int SHA1_CTX ;


 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_DATA_LEN_RANGE ;
 int CRYPTO_SUCCESS ;
 size_t MIN (scalar_t__,size_t) ;
 int SHA1Update (int *,int *,size_t) ;
 scalar_t__ UIO_SYSSPACE ;

__attribute__((used)) static int
sha1_digest_update_uio(SHA1_CTX *sha1_ctx, crypto_data_t *data)
{
 off_t offset = data->cd_offset;
 size_t length = data->cd_length;
 uint_t vec_idx = 0;
 size_t cur_len;


 if (data->cd_uio->uio_segflg != UIO_SYSSPACE)
  return (CRYPTO_ARGUMENTS_BAD);





 while (vec_idx < data->cd_uio->uio_iovcnt &&
     offset >= data->cd_uio->uio_iov[vec_idx].iov_len) {
  offset -= data->cd_uio->uio_iov[vec_idx].iov_len;
  vec_idx++;
 }
 if (vec_idx == data->cd_uio->uio_iovcnt) {




  return (CRYPTO_DATA_LEN_RANGE);
 }




 while (vec_idx < data->cd_uio->uio_iovcnt && length > 0) {
  cur_len = MIN(data->cd_uio->uio_iov[vec_idx].iov_len -
      offset, length);

  SHA1Update(sha1_ctx,
      (uint8_t *)data->cd_uio->uio_iov[vec_idx].iov_base + offset,
      cur_len);

  length -= cur_len;
  vec_idx++;
  offset = 0;
 }

 if (vec_idx == data->cd_uio->uio_iovcnt && length > 0) {





  return (CRYPTO_DATA_LEN_RANGE);
 }

 return (CRYPTO_SUCCESS);
}
