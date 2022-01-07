
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv03_Dctx ;
typedef int ZSTD_DCtx ;


 size_t ZSTD_decompressContinue (int *,void*,size_t,void const*,size_t) ;

size_t ZSTDv03_decompressContinue(ZSTDv03_Dctx* dctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    return ZSTD_decompressContinue((ZSTD_DCtx*)dctx, dst, maxDstSize, src, srcSize);
}
