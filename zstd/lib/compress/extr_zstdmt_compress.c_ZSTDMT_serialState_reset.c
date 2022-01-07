
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_18__ {unsigned int hashLog; unsigned int bucketSizeLog; int hashRateLog; scalar_t__ enableLdm; int minMatchLength; } ;
struct TYPE_15__ {scalar_t__ checksumFlag; } ;
struct TYPE_14__ {unsigned int windowLog; } ;
struct TYPE_19__ {scalar_t__ jobSize; TYPE_4__ ldmParams; int customMem; TYPE_1__ fParams; TYPE_10__ cParams; } ;
struct TYPE_16__ {TYPE_4__* bucketOffsets; TYPE_4__* hashTable; int window; int hashPower; } ;
struct TYPE_17__ {TYPE_5__ params; TYPE_2__ ldmState; int ldmWindow; int xxhState; scalar_t__ nextJobID; } ;
typedef TYPE_3__ serialState_t ;
typedef TYPE_4__ ldmEntry_t ;
typedef int ZSTD_customMem ;
typedef TYPE_5__ ZSTD_CCtx_params ;
typedef int ZSTDMT_seqPool ;
typedef scalar_t__ U32 ;
typedef TYPE_4__ BYTE ;


 int DEBUGLOG (int,char*,unsigned int) ;
 int XXH64_reset (int *,int ) ;
 int ZSTDMT_setNbSeq (int *,int ) ;
 int ZSTD_free (TYPE_4__*,int ) ;
 int ZSTD_ldm_adjustParameters (TYPE_4__*,TYPE_10__*) ;
 int ZSTD_ldm_getMaxNbSeq (TYPE_4__,size_t) ;
 scalar_t__ ZSTD_malloc (size_t const,int ) ;
 int ZSTD_rollingHash_primePower (int ) ;
 int ZSTD_window_clear (int *) ;
 int assert (int) ;
 int memset (TYPE_4__*,int ,size_t const) ;

__attribute__((used)) static int ZSTDMT_serialState_reset(serialState_t* serialState, ZSTDMT_seqPool* seqPool, ZSTD_CCtx_params params, size_t jobSize)
{

    if (params.ldmParams.enableLdm) {
        DEBUGLOG(4, "LDM window size = %u KB", (1U << params.cParams.windowLog) >> 10);
        ZSTD_ldm_adjustParameters(&params.ldmParams, &params.cParams);
        assert(params.ldmParams.hashLog >= params.ldmParams.bucketSizeLog);
        assert(params.ldmParams.hashRateLog < 32);
        serialState->ldmState.hashPower =
                ZSTD_rollingHash_primePower(params.ldmParams.minMatchLength);
    } else {
        memset(&params.ldmParams, 0, sizeof(params.ldmParams));
    }
    serialState->nextJobID = 0;
    if (params.fParams.checksumFlag)
        XXH64_reset(&serialState->xxhState, 0);
    if (params.ldmParams.enableLdm) {
        ZSTD_customMem cMem = params.customMem;
        unsigned const hashLog = params.ldmParams.hashLog;
        size_t const hashSize = ((size_t)1 << hashLog) * sizeof(ldmEntry_t);
        unsigned const bucketLog =
            params.ldmParams.hashLog - params.ldmParams.bucketSizeLog;
        size_t const bucketSize = (size_t)1 << bucketLog;
        unsigned const prevBucketLog =
            serialState->params.ldmParams.hashLog -
            serialState->params.ldmParams.bucketSizeLog;

        ZSTDMT_setNbSeq(seqPool, ZSTD_ldm_getMaxNbSeq(params.ldmParams, jobSize));

        ZSTD_window_clear(&serialState->ldmState.window);
        serialState->ldmWindow = serialState->ldmState.window;

        if (serialState->ldmState.hashTable == ((void*)0) || serialState->params.ldmParams.hashLog < hashLog) {
            ZSTD_free(serialState->ldmState.hashTable, cMem);
            serialState->ldmState.hashTable = (ldmEntry_t*)ZSTD_malloc(hashSize, cMem);
        }
        if (serialState->ldmState.bucketOffsets == ((void*)0) || prevBucketLog < bucketLog) {
            ZSTD_free(serialState->ldmState.bucketOffsets, cMem);
            serialState->ldmState.bucketOffsets = (BYTE*)ZSTD_malloc(bucketSize, cMem);
        }
        if (!serialState->ldmState.hashTable || !serialState->ldmState.bucketOffsets)
            return 1;

        memset(serialState->ldmState.hashTable, 0, hashSize);
        memset(serialState->ldmState.bucketOffsets, 0, bucketSize);
    }
    serialState->params = params;
    serialState->params.jobSize = (U32)jobSize;
    return 0;
}
