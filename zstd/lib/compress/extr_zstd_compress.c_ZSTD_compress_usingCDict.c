
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_2; int member_1; } ;
typedef TYPE_1__ ZSTD_frameParameters ;
typedef int ZSTD_CDict ;
typedef int ZSTD_CCtx ;


 size_t ZSTD_compress_usingCDict_advanced (int *,void*,size_t,void const*,size_t,int const*,TYPE_1__ const) ;

size_t ZSTD_compress_usingCDict(ZSTD_CCtx* cctx,
                                void* dst, size_t dstCapacity,
                                const void* src, size_t srcSize,
                                const ZSTD_CDict* cdict)
{
    ZSTD_frameParameters const fParams = { 1 , 0 , 0 };
    return ZSTD_compress_usingCDict_advanced(cctx, dst, dstCapacity, src, srcSize, cdict, fParams);
}
