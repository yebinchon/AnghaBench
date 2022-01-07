
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_frameParameters ;
typedef int ZSTD_CDict ;
typedef int ZSTD_CCtx ;


 int CHECK_F (int ) ;
 int ZSTD_compressBegin_usingCDict_advanced (int *,int const*,int ,size_t) ;
 size_t ZSTD_compressEnd (int *,void*,size_t,void const*,size_t) ;

size_t ZSTD_compress_usingCDict_advanced(ZSTD_CCtx* cctx,
                                void* dst, size_t dstCapacity,
                                const void* src, size_t srcSize,
                                const ZSTD_CDict* cdict, ZSTD_frameParameters fParams)
{
    CHECK_F (ZSTD_compressBegin_usingCDict_advanced(cctx, cdict, fParams, srcSize));
    return ZSTD_compressEnd(cctx, dst, dstCapacity, src, srcSize);
}
