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
typedef  int /*<<< orphan*/  U16 ;
typedef  int /*<<< orphan*/  HUF_CElt ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t const,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int cSize ; 

__attribute__((used)) static size_t
FUNC4(void* dst, size_t dstSize,
                              const void* src, size_t srcSize,
                              const HUF_CElt* CTable, int bmi2)
{
    size_t const segmentSize = (srcSize+3)/4;   /* first 3 segments */
    const BYTE* ip = (const BYTE*) src;
    const BYTE* const iend = ip + srcSize;
    BYTE* const ostart = (BYTE*) dst;
    BYTE* const oend = ostart + dstSize;
    BYTE* op = ostart;

    if (dstSize < 6 + 1 + 1 + 1 + 8) return 0;   /* minimum space to compress successfully */
    if (srcSize < 12) return 0;   /* no saving possible : too small input */
    op += 6;   /* jumpTable */

    {   FUNC0(cSize, FUNC1(op, oend-op, ip, segmentSize, CTable, bmi2) );
        if (cSize==0) return 0;
        FUNC3(cSize <= 65535);
        FUNC2(ostart, (U16)cSize);
        op += cSize;
    }

    ip += segmentSize;
    {   FUNC0(cSize, FUNC1(op, oend-op, ip, segmentSize, CTable, bmi2) );
        if (cSize==0) return 0;
        FUNC3(cSize <= 65535);
        FUNC2(ostart+2, (U16)cSize);
        op += cSize;
    }

    ip += segmentSize;
    {   FUNC0(cSize, FUNC1(op, oend-op, ip, segmentSize, CTable, bmi2) );
        if (cSize==0) return 0;
        FUNC3(cSize <= 65535);
        FUNC2(ostart+4, (U16)cSize);
        op += cSize;
    }

    ip += segmentSize;
    {   FUNC0(cSize, FUNC1(op, oend-op, ip, iend-ip, CTable, bmi2) );
        if (cSize==0) return 0;
        op += cSize;
    }

    return op-ostart;
}