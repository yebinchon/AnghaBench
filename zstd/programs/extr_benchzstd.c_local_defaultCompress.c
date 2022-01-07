
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 size_t ZSTD_compress2 (int * const,void*,size_t,void const*,size_t) ;

__attribute__((used)) static size_t local_defaultCompress(
                    const void* srcBuffer, size_t srcSize,
                    void* dstBuffer, size_t dstSize,
                    void* addArgs)
{
    ZSTD_CCtx* const cctx = (ZSTD_CCtx*)addArgs;
    return ZSTD_compress2(cctx, dstBuffer, dstSize, srcBuffer, srcSize);
}
