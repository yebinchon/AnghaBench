#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dictID; scalar_t__ checksumFlag; } ;
struct TYPE_4__ {scalar_t__ dictID; int /*<<< orphan*/  xxhState; TYPE_2__ fParams; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_2__*,void const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 int /*<<< orphan*/  dictionary_wrong ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC4(ZSTD_DCtx* dctx, const void* src, size_t headerSize)
{
    size_t const result = FUNC2(&(dctx->fParams), src, headerSize, dctx->format);
    if (FUNC3(result)) return result;    /* invalid header */
    FUNC0(result>0, srcSize_wrong, "headerSize too small");
#ifndef FUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION
    /* Skip the dictID check in fuzzing mode, because it makes the search
     * harder.
     */
    FUNC0(dctx->fParams.dictID && (dctx->dictID != dctx->fParams.dictID),
                    dictionary_wrong);
#endif
    if (dctx->fParams.checksumFlag) FUNC1(&dctx->xxhState, 0);
    return 0;
}