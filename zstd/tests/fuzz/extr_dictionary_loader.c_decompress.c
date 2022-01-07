
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_dictLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
typedef int ZSTD_DCtx ;


 int FUZZ_ZASSERT (size_t const) ;
 size_t const ZSTD_DCtx_loadDictionary_advanced (int *,void const*,size_t,int ,int ) ;
 int * ZSTD_createDCtx () ;
 size_t ZSTD_decompressDCtx (int *,void*,size_t,void const*,size_t) ;
 int ZSTD_freeDCtx (int *) ;

__attribute__((used)) static size_t decompress(void* result, size_t resultCapacity,
                         void const* compressed, size_t compressedSize,
                         void const* dict, size_t dictSize,
                       ZSTD_dictLoadMethod_e dictLoadMethod,
                         ZSTD_dictContentType_e dictContentType)
{
    ZSTD_DCtx* dctx = ZSTD_createDCtx();
    FUZZ_ZASSERT(ZSTD_DCtx_loadDictionary_advanced(
            dctx, dict, dictSize, dictLoadMethod, dictContentType));
    size_t const resultSize = ZSTD_decompressDCtx(
            dctx, result, resultCapacity, compressed, compressedSize);
    FUZZ_ZASSERT(resultSize);
    ZSTD_freeDCtx(dctx);
    return resultSize;
}
