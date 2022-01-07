
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint64_t ;
typedef int fletcher_4_ctx_t ;


 int ZIO_SET_CHECKSUM (int *,int ,int ,int ,int ) ;
 int fletcher_4_scalar_native (int *,void const*,int ) ;

void
fletcher_4_native_varsize(const void *buf, uint64_t size, zio_cksum_t *zcp)
{
 ZIO_SET_CHECKSUM(zcp, 0, 0, 0, 0);
 fletcher_4_scalar_native((fletcher_4_ctx_t *)zcp, buf, size);
}
