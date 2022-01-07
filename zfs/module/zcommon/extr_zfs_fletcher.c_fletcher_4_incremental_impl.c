
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ MIN (scalar_t__,int ) ;
 int ZFS_FLETCHER_4_INC_MAX_SIZE ;
 int fletcher_4_byteswap (void const*,scalar_t__,int *,int *) ;
 int fletcher_4_incremental_combine (int *,scalar_t__,int *) ;
 int fletcher_4_native (void const*,scalar_t__,int *,int *) ;

__attribute__((used)) static inline void
fletcher_4_incremental_impl(boolean_t native, const void *buf, uint64_t size,
    zio_cksum_t *zcp)
{
 while (size > 0) {
  zio_cksum_t nzc;
  uint64_t len = MIN(size, ZFS_FLETCHER_4_INC_MAX_SIZE);

  if (native)
   fletcher_4_native(buf, len, ((void*)0), &nzc);
  else
   fletcher_4_byteswap(buf, len, ((void*)0), &nzc);

  fletcher_4_incremental_combine(zcp, len, &nzc);

  size -= len;
  buf += len;
 }
}
