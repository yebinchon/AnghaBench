#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned long long pledgedSrcSize; int /*<<< orphan*/ * zbc; int /*<<< orphan*/  compressionLevel; } ;
typedef  TYPE_2__ ZWRAP_CCtx ;
struct TYPE_7__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  minMatch; int /*<<< orphan*/  searchLog; int /*<<< orphan*/  hashLog; int /*<<< orphan*/  chainLog; int /*<<< orphan*/  windowLog; } ;
struct TYPE_9__ {TYPE_1__ cParams; } ;
typedef  TYPE_3__ ZSTD_parameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ ,unsigned long long,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void const*,size_t,TYPE_3__ const,unsigned long long) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int Z_OK ; 
 int Z_STREAM_ERROR ; 

__attribute__((used)) static int FUNC4(ZWRAP_CCtx* zwc, const void* dict, size_t dictSize, unsigned long long pledgedSrcSize)
{
    FUNC0("- ZWRAP_initializeCStream=%p\n", zwc);
    if (zwc == NULL || zwc->zbc == NULL) return Z_STREAM_ERROR;

    if (!pledgedSrcSize) pledgedSrcSize = zwc->pledgedSrcSize;
    {   ZSTD_parameters const params = FUNC1(zwc->compressionLevel, pledgedSrcSize, dictSize);
        size_t initErr;
        FUNC0("pledgedSrcSize=%d windowLog=%d chainLog=%d hashLog=%d searchLog=%d minMatch=%d strategy=%d\n",
                    (int)pledgedSrcSize, params.cParams.windowLog, params.cParams.chainLog, params.cParams.hashLog, params.cParams.searchLog, params.cParams.minMatch, params.cParams.strategy);
        initErr = FUNC2(zwc->zbc, dict, dictSize, params, pledgedSrcSize);
        if (FUNC3(initErr)) return Z_STREAM_ERROR;
    }

    return Z_OK;
}