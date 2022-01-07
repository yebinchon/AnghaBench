
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int strategy; int targetLength; int minMatch; int searchLog; int chainLog; int hashLog; int windowLog; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
typedef int ZSTD_CCtx ;
typedef int FUZZ_dataProducer_t ;


 scalar_t__ FUZZ_dataProducer_uint32Range (int *,int ,int) ;
 TYPE_1__ FUZZ_randomCParams (size_t,int *) ;
 int ZSTD_HASHLOG_MIN ;
 int ZSTD_LDM_BUCKETSIZELOG_MAX ;
 int ZSTD_LDM_HASHRATELOG_MAX ;
 int ZSTD_LDM_HASHRATELOG_MIN ;
 int ZSTD_LDM_MINMATCH_MAX ;
 int ZSTD_LDM_MINMATCH_MIN ;
 int ZSTD_SRCSIZEHINT_MIN ;
 int ZSTD_c_chainLog ;
 int ZSTD_c_checksumFlag ;
 int ZSTD_c_contentSizeFlag ;
 int ZSTD_c_dictIDFlag ;
 int ZSTD_c_enableLongDistanceMatching ;
 int ZSTD_c_forceAttachDict ;
 int ZSTD_c_forceMaxWindow ;
 int ZSTD_c_hashLog ;
 int ZSTD_c_ldmBucketSizeLog ;
 int ZSTD_c_ldmHashLog ;
 int ZSTD_c_ldmHashRateLog ;
 int ZSTD_c_ldmMinMatch ;
 int ZSTD_c_literalCompressionMode ;
 int ZSTD_c_minMatch ;
 int ZSTD_c_nbWorkers ;
 int ZSTD_c_rsyncable ;
 int ZSTD_c_searchLog ;
 int ZSTD_c_srcSizeHint ;
 int ZSTD_c_strategy ;
 int ZSTD_c_targetLength ;
 int ZSTD_c_windowLog ;
 int set (int *,int ,int ) ;
 int setRand (int *,int ,int ,int,int *) ;

void FUZZ_setRandomParameters(ZSTD_CCtx *cctx, size_t srcSize, FUZZ_dataProducer_t *producer)
{
    ZSTD_compressionParameters cParams = FUZZ_randomCParams(srcSize, producer);
    set(cctx, ZSTD_c_windowLog, cParams.windowLog);
    set(cctx, ZSTD_c_hashLog, cParams.hashLog);
    set(cctx, ZSTD_c_chainLog, cParams.chainLog);
    set(cctx, ZSTD_c_searchLog, cParams.searchLog);
    set(cctx, ZSTD_c_minMatch, cParams.minMatch);
    set(cctx, ZSTD_c_targetLength, cParams.targetLength);
    set(cctx, ZSTD_c_strategy, cParams.strategy);

    setRand(cctx, ZSTD_c_contentSizeFlag, 0, 1, producer);
    setRand(cctx, ZSTD_c_checksumFlag, 0, 1, producer);
    setRand(cctx, ZSTD_c_dictIDFlag, 0, 1, producer);

    setRand(cctx, ZSTD_c_enableLongDistanceMatching, 0, 1, producer);
    setRand(cctx, ZSTD_c_ldmHashLog, ZSTD_HASHLOG_MIN, 16, producer);
    setRand(cctx, ZSTD_c_ldmMinMatch, ZSTD_LDM_MINMATCH_MIN,
            ZSTD_LDM_MINMATCH_MAX, producer);
    setRand(cctx, ZSTD_c_ldmBucketSizeLog, 0, ZSTD_LDM_BUCKETSIZELOG_MAX,
            producer);
    setRand(cctx, ZSTD_c_ldmHashRateLog, ZSTD_LDM_HASHRATELOG_MIN,
            ZSTD_LDM_HASHRATELOG_MAX, producer);

    setRand(cctx, ZSTD_c_nbWorkers, 0, 2, producer);
    setRand(cctx, ZSTD_c_rsyncable, 0, 1, producer);
    setRand(cctx, ZSTD_c_forceMaxWindow, 0, 1, producer);
    setRand(cctx, ZSTD_c_literalCompressionMode, 0, 2, producer);
    setRand(cctx, ZSTD_c_forceAttachDict, 0, 2, producer);
    if (FUZZ_dataProducer_uint32Range(producer, 0, 1) == 0) {
      setRand(cctx, ZSTD_c_srcSizeHint, ZSTD_SRCSIZEHINT_MIN, 2 * srcSize, producer);
    }
}
