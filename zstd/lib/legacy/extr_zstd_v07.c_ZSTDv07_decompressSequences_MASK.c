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
typedef  int /*<<< orphan*/  seq_t ;
struct TYPE_5__ {size_t* prevOffset; int /*<<< orphan*/  DStream; int /*<<< orphan*/  stateML; int /*<<< orphan*/  stateOffb; int /*<<< orphan*/  stateLL; } ;
typedef  TYPE_1__ seqState_t ;
struct TYPE_6__ {int litSize; int fseEntropy; size_t* rep; scalar_t__ dictEnd; scalar_t__ vBase; scalar_t__ base; int /*<<< orphan*/ * OffTable; int /*<<< orphan*/ * MLTable; int /*<<< orphan*/ * LLTable; int /*<<< orphan*/ * litPtr; } ;
typedef  TYPE_2__ ZSTDv07_DCtx ;
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  FSEv07_DTable ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ BITv07_DStream_completed ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t ZSTDv07_REP_INIT ; 
 size_t FUNC5 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/  const,int /*<<< orphan*/  const**,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 scalar_t__ FUNC8 (size_t const) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t const) ; 

__attribute__((used)) static size_t FUNC10(
                               ZSTDv07_DCtx* dctx,
                               void* dst, size_t maxDstSize,
                         const void* seqStart, size_t seqSize)
{
    const BYTE* ip = (const BYTE*)seqStart;
    const BYTE* const iend = ip + seqSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* const oend = ostart + maxDstSize;
    BYTE* op = ostart;
    const BYTE* litPtr = dctx->litPtr;
    const BYTE* const litEnd = litPtr + dctx->litSize;
    FSEv07_DTable* DTableLL = dctx->LLTable;
    FSEv07_DTable* DTableML = dctx->MLTable;
    FSEv07_DTable* DTableOffb = dctx->OffTable;
    const BYTE* const base = (const BYTE*) (dctx->base);
    const BYTE* const vBase = (const BYTE*) (dctx->vBase);
    const BYTE* const dictEnd = (const BYTE*) (dctx->dictEnd);
    int nbSeq;

    /* Build Decoding Tables */
    {   size_t const seqHSize = FUNC5(&nbSeq, DTableLL, DTableML, DTableOffb, dctx->fseEntropy, ip, seqSize);
        if (FUNC8(seqHSize)) return seqHSize;
        ip += seqHSize;
    }

    /* Regen sequences */
    if (nbSeq) {
        seqState_t seqState;
        dctx->fseEntropy = 1;
        { U32 i; for (i=0; i<ZSTDv07_REP_INIT; i++) seqState.prevOffset[i] = dctx->rep[i]; }
        { size_t const errorCode = FUNC0(&(seqState.DStream), ip, iend-ip);
          if (FUNC3(errorCode)) return FUNC2(corruption_detected); }
        FUNC4(&(seqState.stateLL), &(seqState.DStream), DTableLL);
        FUNC4(&(seqState.stateOffb), &(seqState.DStream), DTableOffb);
        FUNC4(&(seqState.stateML), &(seqState.DStream), DTableML);

        for ( ; (FUNC1(&(seqState.DStream)) <= BITv07_DStream_completed) && nbSeq ; ) {
            nbSeq--;
            {   seq_t const sequence = FUNC6(&seqState);
                size_t const oneSeqSize = FUNC7(op, oend, sequence, &litPtr, litEnd, base, vBase, dictEnd);
                if (FUNC8(oneSeqSize)) return oneSeqSize;
                op += oneSeqSize;
        }   }

        /* check if reached exact end */
        if (nbSeq) return FUNC2(corruption_detected);
        /* save reps for next block */
        { U32 i; for (i=0; i<ZSTDv07_REP_INIT; i++) dctx->rep[i] = (U32)(seqState.prevOffset[i]); }
    }

    /* last literal segment */
    {   size_t const lastLLSize = litEnd - litPtr;
        //if (litPtr > litEnd) return ERROR(corruption_detected);   /* too many literals already used */
        if (lastLLSize > (size_t)(oend-op)) return FUNC2(dstSize_tooSmall);
        FUNC9(op, litPtr, lastLLSize);
        op += lastLLSize;
    }

    return op-ostart;
}