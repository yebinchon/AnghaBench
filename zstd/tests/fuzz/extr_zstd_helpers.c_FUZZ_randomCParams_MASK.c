#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* strategy; void* targetLength; void* minMatch; void* searchLog; void* chainLog; void* hashLog; void* windowLog; } ;
typedef  TYPE_1__ ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZSTD_CHAINLOG_MIN ; 
 int /*<<< orphan*/  ZSTD_HASHLOG_MIN ; 
 int ZSTD_MINMATCH_MAX ; 
 int /*<<< orphan*/  ZSTD_MINMATCH_MIN ; 
 int /*<<< orphan*/  ZSTD_SEARCHLOG_MIN ; 
 int ZSTD_STRATEGY_MAX ; 
 int /*<<< orphan*/  ZSTD_STRATEGY_MIN ; 
 int /*<<< orphan*/  ZSTD_WINDOWLOG_MIN ; 
 TYPE_1__ FUNC1 (TYPE_1__,size_t,int /*<<< orphan*/ ) ; 

ZSTD_compressionParameters FUNC2(size_t srcSize, FUZZ_dataProducer_t *producer)
{
    /* Select compression parameters */
    ZSTD_compressionParameters cParams;
    cParams.windowLog = FUNC0(producer, ZSTD_WINDOWLOG_MIN, 15);
    cParams.hashLog = FUNC0(producer, ZSTD_HASHLOG_MIN, 15);
    cParams.chainLog = FUNC0(producer, ZSTD_CHAINLOG_MIN, 16);
    cParams.searchLog = FUNC0(producer, ZSTD_SEARCHLOG_MIN, 9);
    cParams.minMatch = FUNC0(producer, ZSTD_MINMATCH_MIN,
                                          ZSTD_MINMATCH_MAX);
    cParams.targetLength = FUNC0(producer, 0, 512);
    cParams.strategy = FUNC0(producer, ZSTD_STRATEGY_MIN, ZSTD_STRATEGY_MAX);
    return FUNC1(cParams, srcSize, 0);
}