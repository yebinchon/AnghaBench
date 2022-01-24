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
typedef  int symbolEncodingType_e ;
typedef  int /*<<< orphan*/  const U32 ;
typedef  int /*<<< orphan*/  const S16 ;
typedef  int /*<<< orphan*/  FSE_CTable ;
typedef  size_t BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 size_t const FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t const FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,void*,size_t) ; 
 size_t const FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const,unsigned int*,size_t,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const FUNC5 (int /*<<< orphan*/  const,size_t,int /*<<< orphan*/  const) ; 
 size_t FUNC6 (size_t*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  MaxSeq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
#define  set_basic 131 
#define  set_compressed 130 
#define  set_repeat 129 
#define  set_rle 128 

size_t
FUNC11(void* dst, size_t dstCapacity,
                FSE_CTable* nextCTable, U32 FSELog, symbolEncodingType_e type,
                unsigned* count, U32 max,
                const BYTE* codeTable, size_t nbSeq,
                const S16* defaultNorm, U32 defaultNormLog, U32 defaultMax,
                const FSE_CTable* prevCTable, size_t prevCTableSize,
                void* entropyWorkspace, size_t entropyWorkspaceSize)
{
    BYTE* op = (BYTE*)dst;
    const BYTE* const oend = op + dstCapacity;
    FUNC0(6, "ZSTD_buildCTable (dstCapacity=%u)", (unsigned)dstCapacity);

    switch (type) {
    case set_rle:
        FUNC1(FUNC2(nextCTable, (BYTE)max));
        FUNC8(dstCapacity==0, dstSize_tooSmall);
        *op = codeTable[0];
        return 1;
    case set_repeat:
        FUNC10(nextCTable, prevCTable, prevCTableSize);
        return 0;
    case set_basic:
        FUNC1(FUNC3(nextCTable, defaultNorm, defaultMax, defaultNormLog, entropyWorkspace, entropyWorkspaceSize));  /* note : could be pre-calculated */
        return 0;
    case set_compressed: {
        S16 norm[MaxSeq + 1];
        size_t nbSeq_1 = nbSeq;
        const U32 tableLog = FUNC5(FSELog, nbSeq, max);
        if (count[codeTable[nbSeq-1]] > 1) {
            count[codeTable[nbSeq-1]]--;
            nbSeq_1--;
        }
        FUNC9(nbSeq_1 > 1);
        FUNC1(FUNC4(norm, tableLog, count, nbSeq_1, max));
        {   size_t const NCountSize = FUNC6(op, oend - op, norm, max, tableLog);   /* overflow protected */
            FUNC1(NCountSize);
            FUNC1(FUNC3(nextCTable, norm, max, tableLog, entropyWorkspace, entropyWorkspaceSize));
            return NCountSize;
        }
    }
    default: FUNC9(0); FUNC7(GENERIC);
    }
}