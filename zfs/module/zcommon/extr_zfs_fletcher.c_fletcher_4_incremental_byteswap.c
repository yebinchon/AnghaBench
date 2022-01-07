
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int fletcher_4_ctx_t ;


 int B_FALSE ;
 size_t SPA_MINBLOCKSIZE ;
 int fletcher_4_incremental_impl (int ,void*,size_t,int *) ;
 int fletcher_4_scalar_byteswap (int *,void*,size_t) ;

int
fletcher_4_incremental_byteswap(void *buf, size_t size, void *data)
{
 zio_cksum_t *zcp = data;

 if (size < SPA_MINBLOCKSIZE)
  fletcher_4_scalar_byteswap((fletcher_4_ctx_t *)zcp, buf, size);
 else
  fletcher_4_incremental_impl(B_FALSE, buf, size, zcp);
 return (0);
}
