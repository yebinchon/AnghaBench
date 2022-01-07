
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_dictLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
typedef int ZSTD_CCtx ;


 int FUZZ_ZASSERT (int ) ;
 int ZSTD_CCtx_loadDictionary_advanced (int *,void const*,size_t,int ,int ) ;
 size_t ZSTD_compress2 (int *,void*,size_t,void const*,size_t) ;
 int * ZSTD_createCCtx () ;
 int ZSTD_freeCCtx (int *) ;

__attribute__((used)) static size_t compress(void* compressed, size_t compressedCapacity,
                       void const* source, size_t sourceSize,
                       void const* dict, size_t dictSize,
                       ZSTD_dictLoadMethod_e dictLoadMethod,
                       ZSTD_dictContentType_e dictContentType)
{
    ZSTD_CCtx* cctx = ZSTD_createCCtx();
    FUZZ_ZASSERT(ZSTD_CCtx_loadDictionary_advanced(
            cctx, dict, dictSize, dictLoadMethod, dictContentType));
    size_t const compressedSize = ZSTD_compress2(
            cctx, compressed, compressedCapacity, source, sourceSize);
    ZSTD_freeCCtx(cctx);
    return compressedSize;
}
