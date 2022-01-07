
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;


 int ZSTDv05_checkContinuity (int *,void*) ;
 int ZSTDv05_copyDCtx (int *,int const*) ;
 size_t ZSTDv05_decompress_continueDCtx (int *,void*,size_t,void const*,size_t) ;

size_t ZSTDv05_decompress_usingPreparedDCtx(ZSTDv05_DCtx* dctx, const ZSTDv05_DCtx* refDCtx,
                                         void* dst, size_t maxDstSize,
                                   const void* src, size_t srcSize)
{
    ZSTDv05_copyDCtx(dctx, refDCtx);
    ZSTDv05_checkContinuity(dctx, dst);
    return ZSTDv05_decompress_continueDCtx(dctx, dst, maxDstSize, src, srcSize);
}
