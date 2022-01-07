
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ulong_t ;
typedef size_t uint_t ;
typedef int uchar_t ;
typedef scalar_t__ off_t ;
struct TYPE_7__ {scalar_t__ cd_offset; TYPE_2__* cd_uio; } ;
typedef TYPE_3__ crypto_data_t ;
struct TYPE_6__ {scalar_t__ uio_segflg; size_t uio_iovcnt; TYPE_1__* uio_iov; } ;
struct TYPE_5__ {scalar_t__ iov_len; int * iov_base; } ;
typedef int SHA1_CTX ;


 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_DATA_LEN_RANGE ;
 int CRYPTO_SUCCESS ;
 size_t MIN (scalar_t__,size_t) ;
 int SHA1Final (int *,int *) ;
 scalar_t__ SHA1_DIGEST_LENGTH ;
 scalar_t__ UIO_SYSSPACE ;
 int bcopy (int *,int *,size_t) ;

__attribute__((used)) static int
sha1_digest_final_uio(SHA1_CTX *sha1_ctx, crypto_data_t *digest,
    ulong_t digest_len, uchar_t *digest_scratch)
{
 off_t offset = digest->cd_offset;
 uint_t vec_idx = 0;


 if (digest->cd_uio->uio_segflg != UIO_SYSSPACE)
  return (CRYPTO_ARGUMENTS_BAD);





 while (vec_idx < digest->cd_uio->uio_iovcnt &&
     offset >= digest->cd_uio->uio_iov[vec_idx].iov_len) {
  offset -= digest->cd_uio->uio_iov[vec_idx].iov_len;
  vec_idx++;
 }
 if (vec_idx == digest->cd_uio->uio_iovcnt) {





  return (CRYPTO_DATA_LEN_RANGE);
 }

 if (offset + digest_len <=
     digest->cd_uio->uio_iov[vec_idx].iov_len) {




  if (digest_len != SHA1_DIGEST_LENGTH) {





   SHA1Final(digest_scratch, sha1_ctx);
   bcopy(digest_scratch, (uchar_t *)digest->
       cd_uio->uio_iov[vec_idx].iov_base + offset,
       digest_len);
  } else {
   SHA1Final((uchar_t *)digest->
       cd_uio->uio_iov[vec_idx].iov_base + offset,
       sha1_ctx);
  }
 } else {






  uchar_t digest_tmp[SHA1_DIGEST_LENGTH];
  off_t scratch_offset = 0;
  size_t length = digest_len;
  size_t cur_len;

  SHA1Final(digest_tmp, sha1_ctx);

  while (vec_idx < digest->cd_uio->uio_iovcnt && length > 0) {
   cur_len = MIN(digest->cd_uio->uio_iov[vec_idx].iov_len -
       offset, length);
   bcopy(digest_tmp + scratch_offset,
       digest->cd_uio->uio_iov[vec_idx].iov_base + offset,
       cur_len);

   length -= cur_len;
   vec_idx++;
   scratch_offset += cur_len;
   offset = 0;
  }

  if (vec_idx == digest->cd_uio->uio_iovcnt && length > 0) {






   return (CRYPTO_DATA_LEN_RANGE);
  }
 }

 return (CRYPTO_SUCCESS);
}
