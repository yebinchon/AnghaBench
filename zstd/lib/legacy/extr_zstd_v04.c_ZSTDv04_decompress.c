
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 size_t ERROR (int ) ;
 int * ZSTD_createDCtx () ;
 int ZSTD_freeDCtx (int *) ;
 size_t ZSTDv04_decompressDCtx (int *,void*,size_t,void const*,size_t) ;
 int memory_allocation ;

size_t ZSTDv04_decompress(void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    ZSTD_DCtx dctx;
    return ZSTDv04_decompressDCtx(&dctx, dst, maxDstSize, src, srcSize);

}
