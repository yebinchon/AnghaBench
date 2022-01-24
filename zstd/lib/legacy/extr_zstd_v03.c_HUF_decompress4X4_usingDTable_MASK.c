#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int U32 ;
typedef  int /*<<< orphan*/  HUF_DEltX4 ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BIT_DStream_t ;

/* Variables and functions */
 int BIT_DStream_unfinished ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const,size_t const) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/  const* const,int const) ; 
 scalar_t__ FUNC8 (size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  corruption_detected ; 

__attribute__((used)) static size_t FUNC10(
          void* dst,  size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const U32* DTable)
{
    if (cSrcSize < 10) return FUNC3(corruption_detected);   /* strict minimum : jump table + 1 byte per stream */

    {
        const BYTE* const istart = (const BYTE*) cSrc;
        BYTE* const ostart = (BYTE*) dst;
        BYTE* const oend = ostart + dstSize;

        const void* ptr = DTable;
        const HUF_DEltX4* const dt = ((const HUF_DEltX4*)ptr) +1;
        const U32 dtLog = DTable[0];
        size_t errorCode;

        /* Init */
        BIT_DStream_t bitD1;
        BIT_DStream_t bitD2;
        BIT_DStream_t bitD3;
        BIT_DStream_t bitD4;
        const size_t length1 = FUNC9(istart);
        const size_t length2 = FUNC9(istart+2);
        const size_t length3 = FUNC9(istart+4);
        size_t length4;
        const BYTE* const istart1 = istart + 6;  /* jumpTable */
        const BYTE* const istart2 = istart1 + length1;
        const BYTE* const istart3 = istart2 + length2;
        const BYTE* const istart4 = istart3 + length3;
        const size_t segmentSize = (dstSize+3) / 4;
        BYTE* const opStart2 = ostart + segmentSize;
        BYTE* const opStart3 = opStart2 + segmentSize;
        BYTE* const opStart4 = opStart3 + segmentSize;
        BYTE* op1 = ostart;
        BYTE* op2 = opStart2;
        BYTE* op3 = opStart3;
        BYTE* op4 = opStart4;
        U32 endSignal;

        length4 = cSrcSize - (length1 + length2 + length3 + 6);
        if (length4 > cSrcSize) return FUNC3(corruption_detected);   /* overflow */
        errorCode = FUNC1(&bitD1, istart1, length1);
        if (FUNC8(errorCode)) return errorCode;
        errorCode = FUNC1(&bitD2, istart2, length2);
        if (FUNC8(errorCode)) return errorCode;
        errorCode = FUNC1(&bitD3, istart3, length3);
        if (FUNC8(errorCode)) return errorCode;
        errorCode = FUNC1(&bitD4, istart4, length4);
        if (FUNC8(errorCode)) return errorCode;

        /* 16-32 symbols per loop (4-8 symbols per stream) */
        endSignal = FUNC2(&bitD1) | FUNC2(&bitD2) | FUNC2(&bitD3) | FUNC2(&bitD4);
        for ( ; (endSignal==BIT_DStream_unfinished) && (op4<(oend-7)) ; )
        {
            FUNC6(op1, &bitD1);
            FUNC6(op2, &bitD2);
            FUNC6(op3, &bitD3);
            FUNC6(op4, &bitD4);
            FUNC5(op1, &bitD1);
            FUNC5(op2, &bitD2);
            FUNC5(op3, &bitD3);
            FUNC5(op4, &bitD4);
            FUNC6(op1, &bitD1);
            FUNC6(op2, &bitD2);
            FUNC6(op3, &bitD3);
            FUNC6(op4, &bitD4);
            FUNC4(op1, &bitD1);
            FUNC4(op2, &bitD2);
            FUNC4(op3, &bitD3);
            FUNC4(op4, &bitD4);

            endSignal = FUNC2(&bitD1) | FUNC2(&bitD2) | FUNC2(&bitD3) | FUNC2(&bitD4);
        }

        /* check corruption */
        if (op1 > opStart2) return FUNC3(corruption_detected);
        if (op2 > opStart3) return FUNC3(corruption_detected);
        if (op3 > opStart4) return FUNC3(corruption_detected);
        /* note : op4 supposed already verified within main loop */

        /* finish bitStreams one by one */
        FUNC7(op1, &bitD1, opStart2, dt, dtLog);
        FUNC7(op2, &bitD2, opStart3, dt, dtLog);
        FUNC7(op3, &bitD3, opStart4, dt, dtLog);
        FUNC7(op4, &bitD4, oend,     dt, dtLog);

        /* check */
        endSignal = FUNC0(&bitD1) & FUNC0(&bitD2) & FUNC0(&bitD3) & FUNC0(&bitD4);
        if (!endSignal) return FUNC3(corruption_detected);

        /* decoded size */
        return dstSize;
    }
}