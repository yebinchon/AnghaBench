
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int rawSeq ;
struct TYPE_7__ {size_t windowLog; int searchLength; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
typedef int ZSTD_compressedBlockState_t ;
struct TYPE_8__ {scalar_t__ nbWorkers; int ldmParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;
typedef int ZSTD_CCtx ;
typedef size_t U32 ;


 int DEBUGLOG (int,char*,size_t) ;
 size_t ERROR (int ) ;
 int GENERIC ;
 size_t HUF_WORKSPACE_SIZE ;
 size_t MIN (int ,size_t) ;
 size_t const WILDCOPY_OVERLENGTH ;
 int ZSTD_BLOCKSIZE_MAX ;
 TYPE_1__ ZSTD_getCParamsFromCCtxParams (TYPE_2__ const*,int ,int ) ;
 int ZSTD_ldm_getMaxNbSeq (int ,size_t const) ;
 size_t ZSTD_ldm_getTableSize (int ) ;
 size_t ZSTD_sizeof_matchState (TYPE_1__ const*,int) ;

size_t ZSTD_estimateCCtxSize_usingCCtxParams(const ZSTD_CCtx_params* params)
{

    if (params->nbWorkers > 0) { return ERROR(GENERIC); }
    { ZSTD_compressionParameters const cParams =
                ZSTD_getCParamsFromCCtxParams(params, 0, 0);
        size_t const blockSize = MIN(ZSTD_BLOCKSIZE_MAX, (size_t)1 << cParams.windowLog);
        U32 const divider = (cParams.searchLength==3) ? 3 : 4;
        size_t const maxNbSeq = blockSize / divider;
        size_t const tokenSpace = WILDCOPY_OVERLENGTH + blockSize + 11*maxNbSeq;
        size_t const entropySpace = HUF_WORKSPACE_SIZE;
        size_t const blockStateSpace = 2 * sizeof(ZSTD_compressedBlockState_t);
        size_t const matchStateSize = ZSTD_sizeof_matchState(&cParams, 1);

        size_t const ldmSpace = ZSTD_ldm_getTableSize(params->ldmParams);
        size_t const ldmSeqSpace = ZSTD_ldm_getMaxNbSeq(params->ldmParams, blockSize) * sizeof(rawSeq);

        size_t const neededSpace = entropySpace + blockStateSpace + tokenSpace +
                                   matchStateSize + ldmSpace + ldmSeqSpace;

        DEBUGLOG(5, "sizeof(ZSTD_CCtx) : %u", (U32)sizeof(ZSTD_CCtx));
        DEBUGLOG(5, "estimate workSpace : %u", (U32)neededSpace);
        return sizeof(ZSTD_CCtx) + neededSpace;
    }
}
