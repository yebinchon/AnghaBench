
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int seqDef ;
typedef int rawSeq ;
struct TYPE_7__ {size_t windowLog; int minMatch; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
typedef int ZSTD_compressedBlockState_t ;
struct TYPE_8__ {scalar_t__ nbWorkers; int ldmParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;
typedef int ZSTD_CCtx ;
typedef size_t U32 ;
typedef int BYTE ;


 int DEBUGLOG (int,char*,size_t) ;
 int GENERIC ;
 int HUF_WORKSPACE_SIZE ;
 size_t MIN (int ,size_t) ;
 int RETURN_ERROR_IF (int,int ,char*) ;
 int WILDCOPY_OVERLENGTH ;
 int ZSTD_BLOCKSIZE_MAX ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_cwksp_alloc_size (size_t const) ;
 TYPE_1__ ZSTD_getCParamsFromCCtxParams (TYPE_2__ const*,int ,int ) ;
 int ZSTD_ldm_getMaxNbSeq (int ,size_t const) ;
 size_t ZSTD_ldm_getTableSize (int ) ;
 size_t ZSTD_sizeof_matchState (TYPE_1__ const*,int) ;

size_t ZSTD_estimateCCtxSize_usingCCtxParams(const ZSTD_CCtx_params* params)
{
    RETURN_ERROR_IF(params->nbWorkers > 0, GENERIC, "Estimate CCtx size is supported for single-threaded compression only.");
    { ZSTD_compressionParameters const cParams =
                ZSTD_getCParamsFromCCtxParams(params, ZSTD_CONTENTSIZE_UNKNOWN, 0);
        size_t const blockSize = MIN(ZSTD_BLOCKSIZE_MAX, (size_t)1 << cParams.windowLog);
        U32 const divider = (cParams.minMatch==3) ? 3 : 4;
        size_t const maxNbSeq = blockSize / divider;
        size_t const tokenSpace = ZSTD_cwksp_alloc_size(WILDCOPY_OVERLENGTH + blockSize)
                                + ZSTD_cwksp_alloc_size(maxNbSeq * sizeof(seqDef))
                                + 3 * ZSTD_cwksp_alloc_size(maxNbSeq * sizeof(BYTE));
        size_t const entropySpace = ZSTD_cwksp_alloc_size(HUF_WORKSPACE_SIZE);
        size_t const blockStateSpace = 2 * ZSTD_cwksp_alloc_size(sizeof(ZSTD_compressedBlockState_t));
        size_t const matchStateSize = ZSTD_sizeof_matchState(&cParams, 1);

        size_t const ldmSpace = ZSTD_ldm_getTableSize(params->ldmParams);
        size_t const ldmSeqSpace = ZSTD_cwksp_alloc_size(ZSTD_ldm_getMaxNbSeq(params->ldmParams, blockSize) * sizeof(rawSeq));

        size_t const neededSpace = entropySpace + blockStateSpace + tokenSpace +
                                   matchStateSize + ldmSpace + ldmSeqSpace;
        size_t const cctxSpace = ZSTD_cwksp_alloc_size(sizeof(ZSTD_CCtx));

        DEBUGLOG(5, "sizeof(ZSTD_CCtx) : %u", (U32)cctxSpace);
        DEBUGLOG(5, "estimate workspace : %u", (U32)neededSpace);
        return cctxSpace + neededSpace;
    }
}
