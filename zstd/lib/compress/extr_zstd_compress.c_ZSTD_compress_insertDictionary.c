
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_matchState_t ;
typedef int ZSTD_dictTableLoadMethod_e ;
typedef scalar_t__ ZSTD_dictContentType_e ;
typedef int ZSTD_cwksp ;
typedef int ZSTD_compressedBlockState_t ;
typedef int ZSTD_CCtx_params ;
typedef int U32 ;


 int DEBUGLOG (int,char*,...) ;
 scalar_t__ MEM_readLE32 (void const*) ;
 int RETURN_ERROR_IF (int,int ) ;
 scalar_t__ ZSTD_MAGIC_DICTIONARY ;
 scalar_t__ ZSTD_dct_auto ;
 scalar_t__ ZSTD_dct_fullDict ;
 scalar_t__ ZSTD_dct_rawContent ;
 size_t ZSTD_loadDictionaryContent (int *,int *,int const*,void const*,size_t,int ) ;
 size_t ZSTD_loadZstdDictionary (int *,int *,int *,int const*,void const*,size_t,int ,void*) ;
 int ZSTD_reset_compressedBlockState (int *) ;
 int assert (int ) ;
 int dictionary_wrong ;

__attribute__((used)) static size_t
ZSTD_compress_insertDictionary(ZSTD_compressedBlockState_t* bs,
                               ZSTD_matchState_t* ms,
                               ZSTD_cwksp* ws,
                         const ZSTD_CCtx_params* params,
                         const void* dict, size_t dictSize,
                               ZSTD_dictContentType_e dictContentType,
                               ZSTD_dictTableLoadMethod_e dtlm,
                               void* workspace)
{
    DEBUGLOG(4, "ZSTD_compress_insertDictionary (dictSize=%u)", (U32)dictSize);
    if ((dict==((void*)0)) || (dictSize<8)) {
        RETURN_ERROR_IF(dictContentType == ZSTD_dct_fullDict, dictionary_wrong);
        return 0;
    }

    ZSTD_reset_compressedBlockState(bs);


    if (dictContentType == ZSTD_dct_rawContent)
        return ZSTD_loadDictionaryContent(ms, ws, params, dict, dictSize, dtlm);

    if (MEM_readLE32(dict) != ZSTD_MAGIC_DICTIONARY) {
        if (dictContentType == ZSTD_dct_auto) {
            DEBUGLOG(4, "raw content dictionary detected");
            return ZSTD_loadDictionaryContent(
                ms, ws, params, dict, dictSize, dtlm);
        }
        RETURN_ERROR_IF(dictContentType == ZSTD_dct_fullDict, dictionary_wrong);
        assert(0);
    }


    return ZSTD_loadZstdDictionary(
        bs, ms, ws, params, dict, dictSize, dtlm, workspace);
}
