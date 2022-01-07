
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ uio_segflg; size_t uio_iovcnt; TYPE_1__* uio_iov; } ;
typedef TYPE_2__ uio_t ;
typedef size_t uint_t ;
typedef int uint8_t ;
typedef int uchar_t ;
struct TYPE_10__ {int sc_digest_bitlen; } ;
typedef TYPE_3__ skein_ctx_t ;
typedef scalar_t__ off_t ;
typedef int crypto_req_handle_t ;
struct TYPE_11__ {scalar_t__ cd_offset; TYPE_2__* cd_uio; } ;
typedef TYPE_4__ crypto_data_t ;
struct TYPE_8__ {scalar_t__ iov_len; scalar_t__ iov_base; } ;


 int CRYPTO_ARGUMENTS_BAD ;
 size_t CRYPTO_BITS2BYTES (int ) ;
 int CRYPTO_DATA_LEN_RANGE ;
 int CRYPTO_HOST_MEMORY ;
 int CRYPTO_SUCCESS ;
 int Final ;
 size_t MIN (scalar_t__,size_t) ;
 int SKEIN_OP (TYPE_3__*,int ,int *) ;
 scalar_t__ UIO_SYSSPACE ;
 int bcopy (int *,scalar_t__,size_t) ;
 int crypto_kmflag (int ) ;
 int * kmem_alloc (size_t,int ) ;
 int kmem_free (int *,size_t) ;

__attribute__((used)) static int
skein_digest_final_uio(skein_ctx_t *ctx, crypto_data_t *digest,
    crypto_req_handle_t req)
{
 off_t offset = digest->cd_offset;
 uint_t vec_idx = 0;
 uio_t *uio = digest->cd_uio;


 if (uio->uio_segflg != UIO_SYSSPACE)
  return (CRYPTO_ARGUMENTS_BAD);




 while (vec_idx < uio->uio_iovcnt &&
     offset >= uio->uio_iov[vec_idx].iov_len) {
  offset -= uio->uio_iov[vec_idx].iov_len;
  vec_idx++;
 }
 if (vec_idx == uio->uio_iovcnt) {




  return (CRYPTO_DATA_LEN_RANGE);
 }
 if (offset + CRYPTO_BITS2BYTES(ctx->sc_digest_bitlen) <=
     uio->uio_iov[vec_idx].iov_len) {

  SKEIN_OP(ctx, Final,
      (uchar_t *)uio->uio_iov[vec_idx].iov_base + offset);
 } else {
  uint8_t *digest_tmp;
  off_t scratch_offset = 0;
  size_t length = CRYPTO_BITS2BYTES(ctx->sc_digest_bitlen);
  size_t cur_len;

  digest_tmp = kmem_alloc(CRYPTO_BITS2BYTES(
      ctx->sc_digest_bitlen), crypto_kmflag(req));
  if (digest_tmp == ((void*)0))
   return (CRYPTO_HOST_MEMORY);
  SKEIN_OP(ctx, Final, digest_tmp);
  while (vec_idx < uio->uio_iovcnt && length > 0) {
   cur_len = MIN(uio->uio_iov[vec_idx].iov_len - offset,
       length);
   bcopy(digest_tmp + scratch_offset,
       uio->uio_iov[vec_idx].iov_base + offset, cur_len);

   length -= cur_len;
   vec_idx++;
   scratch_offset += cur_len;
   offset = 0;
  }
  kmem_free(digest_tmp, CRYPTO_BITS2BYTES(ctx->sc_digest_bitlen));

  if (vec_idx == uio->uio_iovcnt && length > 0) {






   return (CRYPTO_DATA_LEN_RANGE);
  }
 }

 return (CRYPTO_SUCCESS);
}
