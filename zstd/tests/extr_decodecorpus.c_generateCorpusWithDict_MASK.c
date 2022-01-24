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
struct TYPE_4__ {int /*<<< orphan*/ * srcStart; scalar_t__ src; int /*<<< orphan*/ * dataStart; scalar_t__ data; } ;
typedef  TYPE_1__ frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (size_t const,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/  const) ; 
 scalar_t__ gt_frame ; 
 int /*<<< orphan*/  FUNC8 (int,size_t const,int /*<<< orphan*/ * const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC9 (size_t const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t const,char const* const) ; 
 int FUNC11 (char*,int,char*,char const* const,...) ; 

__attribute__((used)) static int FUNC12(U32 seed, unsigned numFiles, const char* const path,
                                  const char* const origPath, const size_t dictSize,
                                  genType_e genType)
{
    char outPath[MAX_PATH];
    BYTE* fullDict;
    U32 const dictID = FUNC3(&seed);
    int errorDetected = 0;

    if (FUNC11(outPath, MAX_PATH, "%s/dictionary", path) + 1 > MAX_PATH) {
        FUNC0("Error: path too long\n");
        return 1;
    }

    /* allocate space for the dictionary */
    fullDict = FUNC9(dictSize);
    if (fullDict == NULL) {
        FUNC0("Error: could not allocate space for full dictionary.\n");
        return 1;
    }

    /* randomly generate the dictionary */
    {   int const ret = FUNC5(dictID, seed, dictSize, fullDict);
        if (ret != 0) {
            errorDetected = ret;
            goto dictCleanup;
        }
    }

    /* write out dictionary */
    if (numFiles != 0) {
        if (FUNC11(outPath, MAX_PATH, "%s/dictionary", path) + 1 > MAX_PATH) {
            FUNC0("Error: dictionary path too long\n");
            errorDetected = 1;
            goto dictCleanup;
        }
        FUNC10(fullDict, dictSize, outPath);
    }
    else {
        FUNC10(fullDict, dictSize, "dictionary");
    }

    /* generate random compressed/decompressed files */
    {   unsigned fnum;
        for (fnum = 0; fnum < FUNC2(numFiles, 1); fnum++) {
            frame_t fr;
            FUNC1("\r%u/%u        ", fnum, numFiles);
            {
                size_t const headerSize = FUNC2(dictSize/4, 256);
                size_t const dictContentSize = dictSize-headerSize;
                BYTE* const dictContent = fullDict+headerSize;
                dictInfo const info = FUNC8(1, dictContentSize, dictContent, dictID);
                if (genType == gt_frame) {
                    seed = FUNC7(seed, &fr, info);
                } else {
                    seed = FUNC6(seed, &fr, info);
                }
            }

            if (numFiles != 0) {
                if (FUNC11(outPath, MAX_PATH, "%s/z%06u.zst", path, fnum) + 1 > MAX_PATH) {
                    FUNC0("Error: path too long\n");
                    errorDetected = 1;
                    goto dictCleanup;
                }
                FUNC10(fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart, outPath);

                if (origPath) {
                    if (FUNC11(outPath, MAX_PATH, "%s/z%06u", origPath, fnum) + 1 > MAX_PATH) {
                        FUNC0("Error: path too long\n");
                        errorDetected = 1;
                        goto dictCleanup;
                    }
                    FUNC10(fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart, outPath);
                }
            }
            else {
                FUNC10(fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart, path);
                if (origPath) {
                    FUNC10(fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart, origPath);
                }
            }
        }
    }

dictCleanup:
    FUNC4(fullDict);
    return errorDetected;
}