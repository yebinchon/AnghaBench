
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 size_t ZSTD_compress2 (int *,void*,size_t,void const*,size_t) ;
 size_t ZSTD_compressBound (size_t) ;
 int assert (int) ;

__attribute__((used)) static size_t local_defaultCompress(
                            const void* srcBuffer, size_t srcSize,
                            void* dstBuffer, size_t dstSize,
                            void* addArgs)
{
    ZSTD_CCtx* cctx = (ZSTD_CCtx*)addArgs;
    assert(dstSize == ZSTD_compressBound(srcSize));
    return ZSTD_compress2(cctx, dstBuffer, dstSize, srcBuffer, srcSize);
}
