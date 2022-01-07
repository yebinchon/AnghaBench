
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ZSTD_dictLoadMethod_e ;
typedef int ZSTD_compressionParameters ;
typedef int ZSTD_CDict ;
typedef int U32 ;


 int DEBUGLOG (int,char*,int ) ;
 size_t HUF_WORKSPACE_SIZE ;
 scalar_t__ ZSTD_dlm_byRef ;
 size_t ZSTD_sizeof_matchState (int *,int ) ;

size_t ZSTD_estimateCDictSize_advanced(
        size_t dictSize, ZSTD_compressionParameters cParams,
        ZSTD_dictLoadMethod_e dictLoadMethod)
{
    DEBUGLOG(5, "sizeof(ZSTD_CDict) : %u", (U32)sizeof(ZSTD_CDict));
    return sizeof(ZSTD_CDict) + HUF_WORKSPACE_SIZE + ZSTD_sizeof_matchState(&cParams, 0)
           + (dictLoadMethod == ZSTD_dlm_byRef ? 0 : dictSize);
}
