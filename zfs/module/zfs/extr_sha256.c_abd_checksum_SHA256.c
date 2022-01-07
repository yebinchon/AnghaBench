
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void** zc_word; } ;
typedef TYPE_1__ zio_cksum_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int abd_t ;
typedef int SHA2_CTX ;


 void* BE_64 (void*) ;
 int CPA_STATUS_SUCCESS ;
 int SHA256 ;
 int SHA2Final (TYPE_1__*,int *) ;
 int SHA2Init (int ,int *) ;
 int ZIO_CHECKSUM_SHA256 ;
 int * abd_borrow_buf_copy (int *,int ) ;
 int abd_iterate_func (int *,int ,int ,int ,int *) ;
 int abd_return_buf (int *,int *,int ) ;
 int qat_checksum (int ,int *,int ,TYPE_1__*) ;
 scalar_t__ qat_checksum_use_accel (int ) ;
 int sha_incremental ;

void
abd_checksum_SHA256(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 int ret;
 SHA2_CTX ctx;
 zio_cksum_t tmp;

 if (qat_checksum_use_accel(size)) {
  uint8_t *buf = abd_borrow_buf_copy(abd, size);
  ret = qat_checksum(ZIO_CHECKSUM_SHA256, buf, size, &tmp);
  abd_return_buf(abd, buf, size);
  if (ret == CPA_STATUS_SUCCESS)
   goto bswap;


 }

 SHA2Init(SHA256, &ctx);
 (void) abd_iterate_func(abd, 0, size, sha_incremental, &ctx);
 SHA2Final(&tmp, &ctx);

bswap:







 zcp->zc_word[0] = BE_64(tmp.zc_word[0]);
 zcp->zc_word[1] = BE_64(tmp.zc_word[1]);
 zcp->zc_word[2] = BE_64(tmp.zc_word[2]);
 zcp->zc_word[3] = BE_64(tmp.zc_word[3]);
}
