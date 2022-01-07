
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx_params ;
typedef int ZSTD_CCtx ;
typedef int U32 ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*,int ) ;
 int ZSTD_compressBegin_internal (int *,void const*,size_t,int ,int ,int *,int ,size_t,int ) ;
 size_t ZSTD_compressEnd (int *,void*,size_t,void const*,size_t) ;
 int ZSTD_dct_auto ;
 int ZSTD_dtlm_fast ;
 int ZSTDb_not_buffered ;

size_t ZSTD_compress_advanced_internal(
        ZSTD_CCtx* cctx,
        void* dst, size_t dstCapacity,
        const void* src, size_t srcSize,
        const void* dict,size_t dictSize,
        ZSTD_CCtx_params params)
{
    DEBUGLOG(4, "ZSTD_compress_advanced_internal (srcSize:%u)", (U32)srcSize);
    CHECK_F( ZSTD_compressBegin_internal(cctx,
                         dict, dictSize, ZSTD_dct_auto, ZSTD_dtlm_fast, ((void*)0),
                         params, srcSize, ZSTDb_not_buffered) );
    return ZSTD_compressEnd(cctx, dst, dstCapacity, src, srcSize);
}
