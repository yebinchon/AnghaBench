
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 int DEBUGLOG (int,char*,unsigned int) ;
 int RETURN_ERROR_IF (int,int ) ;
 size_t ZSTD_compressContinue_internal (int *,void*,size_t,void const*,size_t,int ,int ) ;
 size_t ZSTD_getBlockSize (int *) ;
 int srcSize_wrong ;

size_t ZSTD_compressBlock(ZSTD_CCtx* cctx, void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    DEBUGLOG(5, "ZSTD_compressBlock: srcSize = %u", (unsigned)srcSize);
    { size_t const blockSizeMax = ZSTD_getBlockSize(cctx);
      RETURN_ERROR_IF(srcSize > blockSizeMax, srcSize_wrong); }

    return ZSTD_compressContinue_internal(cctx, dst, dstCapacity, src, srcSize, 0 , 0 );
}
