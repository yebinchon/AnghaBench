
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;


typedef int seqDef ;
typedef int rawSeq ;
typedef int ldmEntry_t ;
typedef int ZSTD_indexResetPolicy_e ;
typedef int ZSTD_cwksp ;
typedef int ZSTD_compressedBlockState_t ;
typedef int ZSTD_compResetPolicy_e ;
typedef scalar_t__ ZSTD_buffered_policy_e ;
struct TYPE_18__ {size_t hashLog; size_t bucketSizeLog; int hashRateLog; scalar_t__ enableLdm; int minMatchLength; } ;
struct TYPE_25__ {scalar_t__ windowLog; int minMatch; } ;
struct TYPE_19__ {int contentSizeFlag; } ;
struct TYPE_23__ {TYPE_13__ ldmParams; TYPE_7__ cParams; TYPE_1__ fParams; } ;
typedef TYPE_5__ ZSTD_CCtx_params ;
struct TYPE_21__ {int window; int * hashTable; int * bucketOffsets; int hashPower; } ;
struct TYPE_26__ {TYPE_7__ cParams; int window; } ;
struct TYPE_22__ {TYPE_8__ matchState; int * prevCBlock; int * nextCBlock; } ;
struct TYPE_20__ {size_t maxNbLit; size_t maxNbSeq; int * sequencesStart; void* ofCode; void* mlCode; void* llCode; void* litStart; } ;
struct TYPE_24__ {int isFirstBlock; size_t* entropyWorkspace; scalar_t__ pledgedSrcSizePlusOne; size_t blockSize; size_t inBuffSize; char* inBuff; size_t outBuffSize; char* outBuff; size_t maxNbLdmSequences; TYPE_3__ ldmState; int * ldmSequences; TYPE_4__ blockState; TYPE_2__ seqStore; scalar_t__ dictID; int stage; int xxhState; TYPE_5__ appliedParams; scalar_t__ producedCSize; scalar_t__ consumedSrcSize; int customMem; scalar_t__ staticSize; int workspace; } ;
typedef TYPE_6__ ZSTD_CCtx ;
typedef scalar_t__ U64 ;
typedef size_t U32 ;
typedef int BYTE ;


 int DEBUGLOG (int,char*,...) ;
 int FORWARD_IF_ERROR (int ) ;
 int HUF_WORKSPACE_SIZE ;
 size_t MAX (int,size_t) ;
 size_t MIN (scalar_t__,size_t const) ;
 int RETURN_ERROR_IF (scalar_t__,int ,char*) ;
 size_t const WILDCOPY_OVERLENGTH ;
 int XXH64_reset (int *,int ) ;
 scalar_t__ ZSTD_BLOCKSIZE_MAX ;
 scalar_t__ const ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_checkCParams (TYPE_7__) ;
 int ZSTD_compressBound (size_t const) ;
 int ZSTD_cwksp_alloc_size (size_t const) ;
 int ZSTD_cwksp_available_space (int * const) ;
 int ZSTD_cwksp_bump_oversized_duration (int * const,int ) ;
 int ZSTD_cwksp_check_available (int * const,int) ;
 int ZSTD_cwksp_check_wasteful (int * const,size_t const) ;
 int ZSTD_cwksp_clear (int * const) ;
 int ZSTD_cwksp_create (int * const,size_t const,int ) ;
 int ZSTD_cwksp_free (int * const,int ) ;
 scalar_t__ ZSTD_cwksp_reserve_aligned (int * const,size_t const) ;
 void* ZSTD_cwksp_reserve_buffer (int * const,size_t const) ;
 scalar_t__ ZSTD_cwksp_reserve_object (int * const,int) ;
 int ZSTD_cwksp_sizeof (int * const) ;
 scalar_t__ ZSTD_indexTooCloseToMax (int ) ;
 int ZSTD_isError (int ) ;
 int ZSTD_ldm_adjustParameters (TYPE_13__*,TYPE_7__*) ;
 size_t ZSTD_ldm_getMaxNbSeq (TYPE_13__,size_t const) ;
 size_t ZSTD_ldm_getTableSize (TYPE_13__) ;
 int ZSTD_referenceExternalSequences (TYPE_6__*,int *,int ) ;
 int ZSTD_resetTarget_CCtx ;
 int ZSTD_reset_compressedBlockState (int *) ;
 int ZSTD_reset_matchState (TYPE_8__*,int * const,TYPE_7__*,int const,int ,int ) ;
 int ZSTD_rollingHash_primePower (int ) ;
 size_t ZSTD_sizeof_matchState (TYPE_7__*,int) ;
 int ZSTD_window_clear (int *) ;
 scalar_t__ const ZSTDb_buffered ;
 int ZSTDcs_init ;
 int ZSTDirp_continue ;
 int ZSTDirp_reset ;
 int assert (int) ;
 int memory_allocation ;
 int memset (int *,int ,size_t const) ;

__attribute__((used)) static size_t ZSTD_resetCCtx_internal(ZSTD_CCtx* zc,
                                      ZSTD_CCtx_params params,
                                      U64 const pledgedSrcSize,
                                      ZSTD_compResetPolicy_e const crp,
                                      ZSTD_buffered_policy_e const zbuff)
{
    ZSTD_cwksp* const ws = &zc->workspace;
    DEBUGLOG(4, "ZSTD_resetCCtx_internal: pledgedSrcSize=%u, wlog=%u",
                (U32)pledgedSrcSize, params.cParams.windowLog);
    assert(!ZSTD_isError(ZSTD_checkCParams(params.cParams)));

    zc->isFirstBlock = 1;

    if (params.ldmParams.enableLdm) {

        ZSTD_ldm_adjustParameters(&params.ldmParams, &params.cParams);
        assert(params.ldmParams.hashLog >= params.ldmParams.bucketSizeLog);
        assert(params.ldmParams.hashRateLog < 32);
        zc->ldmState.hashPower = ZSTD_rollingHash_primePower(params.ldmParams.minMatchLength);
    }

    { size_t const windowSize = MAX(1, (size_t)MIN(((U64)1 << params.cParams.windowLog), pledgedSrcSize));
        size_t const blockSize = MIN(ZSTD_BLOCKSIZE_MAX, windowSize);
        U32 const divider = (params.cParams.minMatch==3) ? 3 : 4;
        size_t const maxNbSeq = blockSize / divider;
        size_t const tokenSpace = ZSTD_cwksp_alloc_size(WILDCOPY_OVERLENGTH + blockSize)
                                + ZSTD_cwksp_alloc_size(maxNbSeq * sizeof(seqDef))
                                + 3 * ZSTD_cwksp_alloc_size(maxNbSeq * sizeof(BYTE));
        size_t const buffOutSize = (zbuff==ZSTDb_buffered) ? ZSTD_compressBound(blockSize)+1 : 0;
        size_t const buffInSize = (zbuff==ZSTDb_buffered) ? windowSize + blockSize : 0;
        size_t const matchStateSize = ZSTD_sizeof_matchState(&params.cParams, 1);
        size_t const maxNbLdmSeq = ZSTD_ldm_getMaxNbSeq(params.ldmParams, blockSize);

        ZSTD_indexResetPolicy_e needsIndexReset = ZSTDirp_continue;

        if (ZSTD_indexTooCloseToMax(zc->blockState.matchState.window)) {
            needsIndexReset = ZSTDirp_reset;
        }

        ZSTD_cwksp_bump_oversized_duration(ws, 0);


        { size_t const cctxSpace = zc->staticSize ? ZSTD_cwksp_alloc_size(sizeof(ZSTD_CCtx)) : 0;
            size_t const entropySpace = ZSTD_cwksp_alloc_size(HUF_WORKSPACE_SIZE);
            size_t const blockStateSpace = 2 * ZSTD_cwksp_alloc_size(sizeof(ZSTD_compressedBlockState_t));
            size_t const bufferSpace = ZSTD_cwksp_alloc_size(buffInSize) + ZSTD_cwksp_alloc_size(buffOutSize);
            size_t const ldmSpace = ZSTD_ldm_getTableSize(params.ldmParams);
            size_t const ldmSeqSpace = ZSTD_cwksp_alloc_size(maxNbLdmSeq * sizeof(rawSeq));

            size_t const neededSpace =
                cctxSpace +
                entropySpace +
                blockStateSpace +
                ldmSpace +
                ldmSeqSpace +
                matchStateSize +
                tokenSpace +
                bufferSpace;

            int const workspaceTooSmall = ZSTD_cwksp_sizeof(ws) < neededSpace;
            int const workspaceWasteful = ZSTD_cwksp_check_wasteful(ws, neededSpace);

            DEBUGLOG(4, "Need %zuKB workspace, including %zuKB for match state, and %zuKB for buffers",
                        neededSpace>>10, matchStateSize>>10, bufferSpace>>10);
            DEBUGLOG(4, "windowSize: %zu - blockSize: %zu", windowSize, blockSize);

            if (workspaceTooSmall || workspaceWasteful) {
                DEBUGLOG(4, "Resize workspaceSize from %zuKB to %zuKB",
                            ZSTD_cwksp_sizeof(ws) >> 10,
                            neededSpace >> 10);

                RETURN_ERROR_IF(zc->staticSize, memory_allocation, "static cctx : no resize");

                needsIndexReset = ZSTDirp_reset;

                ZSTD_cwksp_free(ws, zc->customMem);
                FORWARD_IF_ERROR(ZSTD_cwksp_create(ws, neededSpace, zc->customMem));

                DEBUGLOG(5, "reserving object space");



                assert(ZSTD_cwksp_check_available(ws, 2 * sizeof(ZSTD_compressedBlockState_t)));
                zc->blockState.prevCBlock = (ZSTD_compressedBlockState_t*) ZSTD_cwksp_reserve_object(ws, sizeof(ZSTD_compressedBlockState_t));
                RETURN_ERROR_IF(zc->blockState.prevCBlock == ((void*)0), memory_allocation, "couldn't allocate prevCBlock");
                zc->blockState.nextCBlock = (ZSTD_compressedBlockState_t*) ZSTD_cwksp_reserve_object(ws, sizeof(ZSTD_compressedBlockState_t));
                RETURN_ERROR_IF(zc->blockState.nextCBlock == ((void*)0), memory_allocation, "couldn't allocate nextCBlock");
                zc->entropyWorkspace = (U32*) ZSTD_cwksp_reserve_object(ws, HUF_WORKSPACE_SIZE);
                RETURN_ERROR_IF(zc->blockState.nextCBlock == ((void*)0), memory_allocation, "couldn't allocate entropyWorkspace");
        } }

        ZSTD_cwksp_clear(ws);


        zc->appliedParams = params;
        zc->blockState.matchState.cParams = params.cParams;
        zc->pledgedSrcSizePlusOne = pledgedSrcSize+1;
        zc->consumedSrcSize = 0;
        zc->producedCSize = 0;
        if (pledgedSrcSize == ZSTD_CONTENTSIZE_UNKNOWN)
            zc->appliedParams.fParams.contentSizeFlag = 0;
        DEBUGLOG(4, "pledged content size : %u ; flag : %u",
            (unsigned)pledgedSrcSize, zc->appliedParams.fParams.contentSizeFlag);
        zc->blockSize = blockSize;

        XXH64_reset(&zc->xxhState, 0);
        zc->stage = ZSTDcs_init;
        zc->dictID = 0;

        ZSTD_reset_compressedBlockState(zc->blockState.prevCBlock);




        zc->seqStore.litStart = ZSTD_cwksp_reserve_buffer(ws, blockSize + WILDCOPY_OVERLENGTH);
        zc->seqStore.maxNbLit = blockSize;


        zc->inBuffSize = buffInSize;
        zc->inBuff = (char*)ZSTD_cwksp_reserve_buffer(ws, buffInSize);
        zc->outBuffSize = buffOutSize;
        zc->outBuff = (char*)ZSTD_cwksp_reserve_buffer(ws, buffOutSize);


        if (params.ldmParams.enableLdm) {

            size_t const ldmBucketSize =
                  ((size_t)1) << (params.ldmParams.hashLog -
                                  params.ldmParams.bucketSizeLog);
            zc->ldmState.bucketOffsets = ZSTD_cwksp_reserve_buffer(ws, ldmBucketSize);
            memset(zc->ldmState.bucketOffsets, 0, ldmBucketSize);
        }


        ZSTD_referenceExternalSequences(zc, ((void*)0), 0);
        zc->seqStore.maxNbSeq = maxNbSeq;
        zc->seqStore.llCode = ZSTD_cwksp_reserve_buffer(ws, maxNbSeq * sizeof(BYTE));
        zc->seqStore.mlCode = ZSTD_cwksp_reserve_buffer(ws, maxNbSeq * sizeof(BYTE));
        zc->seqStore.ofCode = ZSTD_cwksp_reserve_buffer(ws, maxNbSeq * sizeof(BYTE));
        zc->seqStore.sequencesStart = (seqDef*)ZSTD_cwksp_reserve_aligned(ws, maxNbSeq * sizeof(seqDef));

        FORWARD_IF_ERROR(ZSTD_reset_matchState(
            &zc->blockState.matchState,
            ws,
            &params.cParams,
            crp,
            needsIndexReset,
            ZSTD_resetTarget_CCtx));


        if (params.ldmParams.enableLdm) {

            size_t const ldmHSize = ((size_t)1) << params.ldmParams.hashLog;
            zc->ldmState.hashTable = (ldmEntry_t*)ZSTD_cwksp_reserve_aligned(ws, ldmHSize * sizeof(ldmEntry_t));
            memset(zc->ldmState.hashTable, 0, ldmHSize * sizeof(ldmEntry_t));
            zc->ldmSequences = (rawSeq*)ZSTD_cwksp_reserve_aligned(ws, maxNbLdmSeq * sizeof(rawSeq));
            zc->maxNbLdmSequences = maxNbLdmSeq;

            memset(&zc->ldmState.window, 0, sizeof(zc->ldmState.window));
            ZSTD_window_clear(&zc->ldmState.window);
        }

        DEBUGLOG(3, "wksp: finished allocating, %zd bytes remain available", ZSTD_cwksp_available_space(ws));

        return 0;
    }
}
