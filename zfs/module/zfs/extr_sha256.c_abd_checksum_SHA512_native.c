
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint64_t ;
typedef int abd_t ;
typedef int SHA2_CTX ;


 int SHA2Final (int *,int *) ;
 int SHA2Init (int ,int *) ;
 int SHA512_256 ;
 int abd_iterate_func (int *,int ,int ,int ,int *) ;
 int sha_incremental ;

void
abd_checksum_SHA512_native(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 SHA2_CTX ctx;

 SHA2Init(SHA512_256, &ctx);
 (void) abd_iterate_func(abd, 0, size, sha_incremental, &ctx);
 SHA2Final(zcp, &ctx);
}
