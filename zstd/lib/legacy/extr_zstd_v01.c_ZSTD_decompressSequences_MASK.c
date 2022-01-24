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
typedef  int /*<<< orphan*/  sequence ;
typedef  int /*<<< orphan*/  seq_t ;
struct TYPE_4__ {int prevOffset; int /*<<< orphan*/  DStream; int /*<<< orphan*/  stateML; int /*<<< orphan*/  stateOffb; int /*<<< orphan*/  stateLL; int /*<<< orphan*/  const* dumpsEnd; int /*<<< orphan*/  const* dumps; } ;
typedef  TYPE_1__ seqState_t ;
struct TYPE_5__ {scalar_t__ base; int /*<<< orphan*/ * OffTable; int /*<<< orphan*/ * MLTable; int /*<<< orphan*/ * LLTable; } ;
typedef  TYPE_2__ dctx_t ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  const BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FSE_DStream_completed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 size_t FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 size_t FUNC8 (int*,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC9 (size_t) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC12(
                               void* ctx,
                               void* dst, size_t maxDstSize,
                         const void* seqStart, size_t seqSize,
                         const BYTE* litStart, size_t litSize)
{
    dctx_t* dctx = (dctx_t*)ctx;
    const BYTE* ip = (const BYTE*)seqStart;
    const BYTE* const iend = ip + seqSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t errorCode, dumpsLength;
    const BYTE* litPtr = litStart;
    const BYTE* const litEnd = litStart + litSize;
    int nbSeq;
    const BYTE* dumps;
    U32* DTableLL = dctx->LLTable;
    U32* DTableML = dctx->MLTable;
    U32* DTableOffb = dctx->OffTable;
    BYTE* const base = (BYTE*) (dctx->base);

    /* Build Decoding Tables */
    errorCode = FUNC8(&nbSeq, &dumps, &dumpsLength,
                                      DTableLL, DTableML, DTableOffb,
                                      ip, iend-ip);
    if (FUNC9(errorCode)) return errorCode;
    ip += errorCode;

    /* Regen sequences */
    {
        seq_t sequence;
        seqState_t seqState;

        FUNC11(&sequence, 0, sizeof(sequence));
        seqState.dumps = dumps;
        seqState.dumpsEnd = dumps + dumpsLength;
        seqState.prevOffset = 1;
        errorCode = FUNC3(&(seqState.DStream), ip, iend-ip);
        if (FUNC4(errorCode)) return FUNC0(corruption_detected);
        FUNC2(&(seqState.stateLL), &(seqState.DStream), DTableLL);
        FUNC2(&(seqState.stateOffb), &(seqState.DStream), DTableOffb);
        FUNC2(&(seqState.stateML), &(seqState.DStream), DTableML);

        for ( ; (FUNC5(&(seqState.DStream)) <= FSE_DStream_completed) && (nbSeq>0) ; )
        {
            size_t oneSeqSize;
            nbSeq--;
            FUNC6(&sequence, &seqState);
            oneSeqSize = FUNC7(op, sequence, &litPtr, litEnd, base, oend);
            if (FUNC9(oneSeqSize)) return oneSeqSize;
            op += oneSeqSize;
        }

        /* check if reached exact end */
        if ( !FUNC1(&(seqState.DStream)) ) return FUNC0(corruption_detected);   /* requested too much : data is corrupted */
        if (nbSeq<0) return FUNC0(corruption_detected);   /* requested too many sequences : data is corrupted */

        /* last literal segment */
        {
            size_t lastLLSize = litEnd - litPtr;
            if (op+lastLLSize > oend) return FUNC0(dstSize_tooSmall);
            if (op != litPtr) FUNC10(op, litPtr, lastLLSize);
            op += lastLLSize;
        }
    }

    return op-ostart;
}