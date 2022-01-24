#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ genType_e ;
struct TYPE_4__ {scalar_t__ srcStart; scalar_t__ src; scalar_t__ dataStart; scalar_t__ data; } ;
typedef  TYPE_1__ frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  int /*<<< orphan*/  ZSTD_DCtx ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  DECOMPRESSED_BUFFER ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t FUNC1 (size_t const,int) ; 
 int /*<<< orphan*/  MAX_DECOMPRESSED_SIZE ; 
 int FUNC2 (int*) ; 
 int ZDICT_CONTENTSIZE_MIN ; 
 int ZDICT_DICTSIZE_MIN ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 size_t FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,size_t const) ; 
 size_t FUNC5 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ * const,size_t const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC10 (int const,int,size_t const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC11 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ gt_frame ; 
 int /*<<< orphan*/  FUNC13 (int,size_t const,int /*<<< orphan*/ * const,int const) ; 
 int /*<<< orphan*/ * FUNC14 (size_t const) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static size_t FUNC16(U32 seed, genType_e genType)
{
    /* create variables */
    size_t const dictSize = FUNC2(&seed) % (10 << 20) + ZDICT_DICTSIZE_MIN + ZDICT_CONTENTSIZE_MIN;
    U32 const dictID = FUNC2(&seed);
    size_t errorDetected = 0;
    BYTE* const fullDict = FUNC14(dictSize);
    if (fullDict == NULL) {
        return FUNC0(GENERIC);
    }

    /* generate random dictionary */
    if (FUNC10(dictID, seed, dictSize, fullDict)) {  /* return 0 on success */
        errorDetected = FUNC0(GENERIC);
        goto dictTestCleanup;
    }


    {   frame_t fr;
        dictInfo info;
        ZSTD_DCtx* const dctx = FUNC3();
        size_t ret;

        /* get dict info */
        {   size_t const headerSize = FUNC1(dictSize/4, 256);
            size_t const dictContentSize = dictSize-headerSize;
            BYTE* const dictContent = fullDict+headerSize;
            info = FUNC13(1, dictContentSize, dictContent, dictID);
        }

        /* manually decompress and check difference */
        if (genType == gt_frame) {
            /* Test frame */
            FUNC12(seed, &fr, info);
            ret = FUNC6(dctx, DECOMPRESSED_BUFFER, MAX_DECOMPRESSED_SIZE,
                                            fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart,
                                            fullDict, dictSize);
        } else {
            /* Test block */
            FUNC11(seed, &fr, info);
            ret = FUNC4(dctx, fullDict, dictSize);
            if (FUNC8(ret)) {
                errorDetected = ret;
                FUNC7(dctx);
                goto dictTestCleanup;
            }
            ret = FUNC5(dctx, DECOMPRESSED_BUFFER, MAX_DECOMPRESSED_SIZE,
                                       fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart);
        }
        FUNC7(dctx);

        if (FUNC8(ret)) {
            errorDetected = ret;
            goto dictTestCleanup;
        }

        if (FUNC15(DECOMPRESSED_BUFFER, fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart) != 0) {
            errorDetected = FUNC0(corruption_detected);
            goto dictTestCleanup;
        }
    }

dictTestCleanup:
    FUNC9(fullDict);
    return errorDetected;
}