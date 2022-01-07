
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 size_t ERROR (int ) ;
 size_t ZSTD_compressContinue_internal (int *,void*,size_t,void const*,size_t,int ,int ) ;
 size_t ZSTD_getBlockSizeMax (int *) ;
 int srcSize_wrong ;

size_t ZSTD_compressBlock(ZSTD_CCtx *cctx, void *dst, size_t dstCapacity, const void *src, size_t srcSize)
{
 size_t const blockSizeMax = ZSTD_getBlockSizeMax(cctx);
 if (srcSize > blockSizeMax)
  return ERROR(srcSize_wrong);
 return ZSTD_compressContinue_internal(cctx, dst, dstCapacity, src, srcSize, 0, 0);
}
