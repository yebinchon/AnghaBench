
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 int RETURN_ERROR_IF (int ,int ) ;
 int * ZSTD_createDCtx () ;
 size_t ZSTD_decompressDCtx (int *,void*,size_t,void const*,size_t) ;
 int ZSTD_freeDCtx (int * const) ;
 int ZSTD_initDCtx_internal (int *) ;
 int memory_allocation ;

size_t ZSTD_decompress(void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    ZSTD_DCtx dctx;
    ZSTD_initDCtx_internal(&dctx);
    return ZSTD_decompressDCtx(&dctx, dst, dstCapacity, src, srcSize);

}
