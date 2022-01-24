#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ windowLog; scalar_t__ minMatchLength; scalar_t__ hashLog; scalar_t__ hashEveryLog; scalar_t__ bucketSizeLog; } ;
typedef  TYPE_1__ ldmParams_t ;
struct TYPE_6__ {scalar_t__ windowLog; scalar_t__ strategy; int /*<<< orphan*/  targetLength; } ;
typedef  TYPE_2__ ZSTD_compressionParameters ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ LDM_BUCKET_SIZE_LOG ; 
 scalar_t__ LDM_HASH_RLOG ; 
 scalar_t__ LDM_MIN_MATCH_LENGTH ; 
 void* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ ZSTD_HASHLOG_MAX ; 
 int /*<<< orphan*/  ZSTD_HASHLOG_MIN ; 
 scalar_t__ ZSTD_LDM_BUCKETSIZELOG_MAX ; 
 scalar_t__ const ZSTD_LDM_MINMATCH_MAX ; 
 scalar_t__ const ZSTD_LDM_MINMATCH_MIN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ ZSTD_btopt ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(ldmParams_t* params,
                               ZSTD_compressionParameters const* cParams)
{
    params->windowLog = cParams->windowLog;
    FUNC3(LDM_BUCKET_SIZE_LOG <= ZSTD_LDM_BUCKETSIZELOG_MAX);
    FUNC0(4, "ZSTD_ldm_adjustParameters");
    if (!params->bucketSizeLog) params->bucketSizeLog = LDM_BUCKET_SIZE_LOG;
    if (!params->minMatchLength) params->minMatchLength = LDM_MIN_MATCH_LENGTH;
    if (cParams->strategy >= ZSTD_btopt) {
      /* Get out of the way of the optimal parser */
      U32 const minMatch = FUNC1(cParams->targetLength, params->minMatchLength);
      FUNC4(minMatch >= ZSTD_LDM_MINMATCH_MIN);
      FUNC4(minMatch <= ZSTD_LDM_MINMATCH_MAX);
      params->minMatchLength = minMatch;
    }
    if (params->hashLog == 0) {
        params->hashLog = FUNC1(ZSTD_HASHLOG_MIN, params->windowLog - LDM_HASH_RLOG);
        FUNC4(params->hashLog <= ZSTD_HASHLOG_MAX);
    }
    if (params->hashEveryLog == 0) {
        params->hashEveryLog = params->windowLog < params->hashLog
                                   ? 0
                                   : params->windowLog - params->hashLog;
    }
    params->bucketSizeLog = FUNC2(params->bucketSizeLog, params->hashLog);
}