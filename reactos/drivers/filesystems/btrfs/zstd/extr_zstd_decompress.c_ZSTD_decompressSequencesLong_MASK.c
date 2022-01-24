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
typedef  int /*<<< orphan*/  ZSTD_longOffset_e ;
struct TYPE_5__ {scalar_t__ bmi2; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (TYPE_1__*,void*,size_t,void const*,size_t,int,int /*<<< orphan*/  const) ; 
 size_t FUNC2 (TYPE_1__*,void*,size_t,void const*,size_t,int,int /*<<< orphan*/  const) ; 

__attribute__((used)) static size_t FUNC3(ZSTD_DCtx* dctx,
                                void* dst, size_t maxDstSize,
                                const void* seqStart, size_t seqSize, int nbSeq,
                                const ZSTD_longOffset_e isLongOffset)
{
    FUNC0(5, "ZSTD_decompressSequencesLong");
#if DYNAMIC_BMI2
    if (dctx->bmi2) {
        return ZSTD_decompressSequencesLong_bmi2(dctx, dst, maxDstSize, seqStart, seqSize, nbSeq, isLongOffset);
    }
#endif
  return FUNC2(dctx, dst, maxDstSize, seqStart, seqSize, nbSeq, isLongOffset);
}