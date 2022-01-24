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
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void* const,size_t,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,void* const,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void* const) ; 
 void* FUNC4 (size_t) ; 

__attribute__((used)) static int FUNC5(U32 benchNb,
                       size_t benchedSize, double compressibility,
                       int cLevel, ZSTD_compressionParameters cparams)
{
    /* Allocation */
    void* const origBuff = FUNC4(benchedSize);
    if (!origBuff) { FUNC0("\nError: not enough memory!\n"); return 12; }

    /* Fill buffer */
    FUNC1(origBuff, benchedSize, compressibility, 0.0, 0);

    /* bench */
    FUNC0("\r%70s\r", "");
    FUNC0(" Sample %u bytes : \n", (unsigned)benchedSize);
    if (benchNb) {
        FUNC2(benchNb, origBuff, benchedSize, cLevel, cparams);
    } else {  /* 0 == run all tests */
        for (benchNb=0; benchNb<100; benchNb++) {
            FUNC2(benchNb, origBuff, benchedSize, cLevel, cparams);
    }   }

    FUNC3(origBuff);
    return 0;
}