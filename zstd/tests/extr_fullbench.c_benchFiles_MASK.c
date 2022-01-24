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
typedef  int U64 ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int const UTIL_FILESIZE_UNKNOWN ; 
 int FUNC2 (char const* const) ; 
 int /*<<< orphan*/  FUNC3 (int,void* const,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC5 (char const* const,char*) ; 
 size_t FUNC6 (void* const,int,size_t,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (void* const) ; 
 void* FUNC8 (size_t) ; 

__attribute__((used)) static int FUNC9(U32 benchNb,
                      const char** fileNamesTable, const int nbFiles,
                      int cLevel, ZSTD_compressionParameters cparams)
{
    /* Loop for each file */
    int fileIdx;
    for (fileIdx=0; fileIdx<nbFiles; fileIdx++) {
        const char* const inFileName = fileNamesTable[fileIdx];
        FILE* const inFile = FUNC5( inFileName, "rb" );
        size_t benchedSize;

        /* Check file existence */
        if (inFile==NULL) { FUNC1( "Pb opening %s\n", inFileName); return 11; }

        /* Memory allocation & restrictions */
        {   U64 const inFileSize = FUNC2(inFileName);
            if (inFileSize == UTIL_FILESIZE_UNKNOWN) {
                FUNC1( "Cannot measure size of %s\n", inFileName);
                FUNC4(inFile);
                return 11;
            }
            benchedSize = FUNC0(inFileSize*3) / 3;
            if ((U64)benchedSize > inFileSize)
                benchedSize = (size_t)inFileSize;
            if ((U64)benchedSize < inFileSize) {
                FUNC1("Not enough memory for '%s' full size; testing %u MB only... \n",
                        inFileName, (unsigned)(benchedSize>>20));
        }   }

        /* Alloc */
        {   void* const origBuff = FUNC8(benchedSize);
            if (!origBuff) { FUNC1("\nError: not enough memory!\n"); FUNC4(inFile); return 12; }

            /* Fill input buffer */
            FUNC1("Loading %s...       \r", inFileName);
            {   size_t const readSize = FUNC6(origBuff, 1, benchedSize, inFile);
                FUNC4(inFile);
                if (readSize != benchedSize) {
                    FUNC1("\nError: problem reading file '%s' !!    \n", inFileName);
                    FUNC7(origBuff);
                    return 13;
            }   }

            /* bench */
            FUNC1("\r%70s\r", "");   /* blank line */
            FUNC1(" %s : \n", inFileName);
            if (benchNb) {
                FUNC3(benchNb, origBuff, benchedSize, cLevel, cparams);
            } else {
                for (benchNb=0; benchNb<100; benchNb++) {
                    FUNC3(benchNb, origBuff, benchedSize, cLevel, cparams);
            }   }

            FUNC7(origBuff);
    }   }

    return 0;
}