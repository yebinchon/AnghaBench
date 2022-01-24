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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  HUF_DSeqX6 ;
typedef  int /*<<< orphan*/  HUF_DDescX6 ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BIT_DStream_t ;

/* Variables and functions */
 scalar_t__ BIT_DStream_unfinished ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 

__attribute__((used)) static inline size_t FUNC5(BYTE* p, BIT_DStream_t* bitDPtr, BYTE* const pEnd, const U32* DTable, const U32 dtLog)
{
    const void* ddPtr = DTable+1;
    const HUF_DDescX6* dd = (const HUF_DDescX6*)(ddPtr);
    const void* dsPtr = DTable + 1 + ((size_t)1<<(dtLog-1));
    const HUF_DSeqX6* ds = (const HUF_DSeqX6*)(dsPtr);
    BYTE* const pStart = p;

    /* up to 16 symbols at a time */
    while ((FUNC0(bitDPtr) == BIT_DStream_unfinished) && (p <= pEnd-16))
    {
        FUNC3(p, bitDPtr);
        FUNC2(p, bitDPtr);
        FUNC3(p, bitDPtr);
        FUNC1(p, bitDPtr);
    }

    /* closer to the end, up to 4 symbols at a time */
    while ((FUNC0(bitDPtr) == BIT_DStream_unfinished) && (p <= pEnd-4))
        FUNC1(p, bitDPtr);

    while (p <= pEnd-4)
        FUNC1(p, bitDPtr);   /* no need to reload : reached the end of DStream */

    while (p < pEnd)
        p += FUNC4(p, (U32)(pEnd-p), bitDPtr, dd, ds, dtLog);

    return p-pStart;
}