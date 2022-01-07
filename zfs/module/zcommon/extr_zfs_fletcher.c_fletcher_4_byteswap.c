
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int fletcher_4_ctx_t ;


 int ASSERT (int ) ;
 int FLETCHER_MIN_SIMD_SIZE ;
 int IS_P2ALIGNED (scalar_t__,int) ;
 scalar_t__ P2ALIGN (scalar_t__,int ) ;
 int ZIO_SET_CHECKSUM (int *,int ,int ,int ,int ) ;
 int fletcher_4_byteswap_impl (void const*,scalar_t__ const,int *) ;
 int fletcher_4_scalar_byteswap (int *,char*,scalar_t__) ;

void
fletcher_4_byteswap(const void *buf, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 const uint64_t p2size = P2ALIGN(size, FLETCHER_MIN_SIMD_SIZE);

 ASSERT(IS_P2ALIGNED(size, sizeof (uint32_t)));

 if (size == 0 || p2size == 0) {
  ZIO_SET_CHECKSUM(zcp, 0, 0, 0, 0);

  if (size > 0)
   fletcher_4_scalar_byteswap((fletcher_4_ctx_t *)zcp,
       buf, size);
 } else {
  fletcher_4_byteswap_impl(buf, p2size, zcp);

  if (p2size < size)
   fletcher_4_scalar_byteswap((fletcher_4_ctx_t *)zcp,
       (char *)buf + p2size, size - p2size);
 }
}
