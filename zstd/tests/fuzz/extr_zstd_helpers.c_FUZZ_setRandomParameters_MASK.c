#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  targetLength; int /*<<< orphan*/  minMatch; int /*<<< orphan*/  searchLog; int /*<<< orphan*/  chainLog; int /*<<< orphan*/  hashLog; int /*<<< orphan*/  windowLog; } ;
typedef  TYPE_1__ ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZSTD_HASHLOG_MIN ; 
 int ZSTD_LDM_BUCKETSIZELOG_MAX ; 
 int ZSTD_LDM_HASHRATELOG_MAX ; 
 int /*<<< orphan*/  ZSTD_LDM_HASHRATELOG_MIN ; 
 int ZSTD_LDM_MINMATCH_MAX ; 
 int /*<<< orphan*/  ZSTD_LDM_MINMATCH_MIN ; 
 int /*<<< orphan*/  ZSTD_SRCSIZEHINT_MIN ; 
 int /*<<< orphan*/  ZSTD_c_chainLog ; 
 int /*<<< orphan*/  ZSTD_c_checksumFlag ; 
 int /*<<< orphan*/  ZSTD_c_contentSizeFlag ; 
 int /*<<< orphan*/  ZSTD_c_dictIDFlag ; 
 int /*<<< orphan*/  ZSTD_c_enableLongDistanceMatching ; 
 int /*<<< orphan*/  ZSTD_c_forceAttachDict ; 
 int /*<<< orphan*/  ZSTD_c_forceMaxWindow ; 
 int /*<<< orphan*/  ZSTD_c_hashLog ; 
 int /*<<< orphan*/  ZSTD_c_ldmBucketSizeLog ; 
 int /*<<< orphan*/  ZSTD_c_ldmHashLog ; 
 int /*<<< orphan*/  ZSTD_c_ldmHashRateLog ; 
 int /*<<< orphan*/  ZSTD_c_ldmMinMatch ; 
 int /*<<< orphan*/  ZSTD_c_literalCompressionMode ; 
 int /*<<< orphan*/  ZSTD_c_minMatch ; 
 int /*<<< orphan*/  ZSTD_c_nbWorkers ; 
 int /*<<< orphan*/  ZSTD_c_rsyncable ; 
 int /*<<< orphan*/  ZSTD_c_searchLog ; 
 int /*<<< orphan*/  ZSTD_c_srcSizeHint ; 
 int /*<<< orphan*/  ZSTD_c_strategy ; 
 int /*<<< orphan*/  ZSTD_c_targetLength ; 
 int /*<<< orphan*/  ZSTD_c_windowLog ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC4(ZSTD_CCtx *cctx, size_t srcSize, FUZZ_dataProducer_t *producer)
{
    ZSTD_compressionParameters cParams = FUNC1(srcSize, producer);
    FUNC2(cctx, ZSTD_c_windowLog, cParams.windowLog);
    FUNC2(cctx, ZSTD_c_hashLog, cParams.hashLog);
    FUNC2(cctx, ZSTD_c_chainLog, cParams.chainLog);
    FUNC2(cctx, ZSTD_c_searchLog, cParams.searchLog);
    FUNC2(cctx, ZSTD_c_minMatch, cParams.minMatch);
    FUNC2(cctx, ZSTD_c_targetLength, cParams.targetLength);
    FUNC2(cctx, ZSTD_c_strategy, cParams.strategy);
    /* Select frame parameters */
    FUNC3(cctx, ZSTD_c_contentSizeFlag, 0, 1, producer);
    FUNC3(cctx, ZSTD_c_checksumFlag, 0, 1, producer);
    FUNC3(cctx, ZSTD_c_dictIDFlag, 0, 1, producer);
    /* Select long distance matching parameters */
    FUNC3(cctx, ZSTD_c_enableLongDistanceMatching, 0, 1, producer);
    FUNC3(cctx, ZSTD_c_ldmHashLog, ZSTD_HASHLOG_MIN, 16, producer);
    FUNC3(cctx, ZSTD_c_ldmMinMatch, ZSTD_LDM_MINMATCH_MIN,
            ZSTD_LDM_MINMATCH_MAX, producer);
    FUNC3(cctx, ZSTD_c_ldmBucketSizeLog, 0, ZSTD_LDM_BUCKETSIZELOG_MAX,
            producer);
    FUNC3(cctx, ZSTD_c_ldmHashRateLog, ZSTD_LDM_HASHRATELOG_MIN,
            ZSTD_LDM_HASHRATELOG_MAX, producer);
    /* Set misc parameters */
    FUNC3(cctx, ZSTD_c_nbWorkers, 0, 2, producer);
    FUNC3(cctx, ZSTD_c_rsyncable, 0, 1, producer);
    FUNC3(cctx, ZSTD_c_forceMaxWindow, 0, 1, producer);
    FUNC3(cctx, ZSTD_c_literalCompressionMode, 0, 2, producer);
    FUNC3(cctx, ZSTD_c_forceAttachDict, 0, 2, producer);
    if (FUNC0(producer, 0, 1) == 0) {
      FUNC3(cctx, ZSTD_c_srcSizeHint, ZSTD_SRCSIZEHINT_MIN, 2 * srcSize, producer);
    }
}