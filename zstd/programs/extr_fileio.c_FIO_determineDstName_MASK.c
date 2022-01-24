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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const* const) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (char const*) ; 
 char* FUNC11 (char const*,char) ; 
 char** suffixList ; 
 int /*<<< orphan*/  suffixListStr ; 

__attribute__((used)) static const char*
FUNC12(const char* srcFileName, const char* outDirName)
{
    static size_t dfnbCapacity = 0;
    static char* dstFileNameBuffer = NULL;   /* using static allocation : this function cannot be multi-threaded */
    size_t dstFileNameEndPos;
    char* outDirFilename = NULL;
    const char* dstSuffix = "";
    size_t dstSuffixLen = 0;

    size_t sfnSize = FUNC10(srcFileName);

    size_t srcSuffixLen;
    const char* const srcSuffix = FUNC11(srcFileName, '.');
    if (srcSuffix == NULL) {
        FUNC0(1,
            "zstd: %s: unknown suffix (%s expected). "
            "Can't derive the output file name. "
            "Specify it with -o dstFileName. Ignoring.\n",
            srcFileName, suffixListStr);
        return NULL;
    }
    srcSuffixLen = FUNC10(srcSuffix);

    {
        const char** matchedSuffixPtr;
        for (matchedSuffixPtr = suffixList; *matchedSuffixPtr != NULL; matchedSuffixPtr++) {
            if (!FUNC7(*matchedSuffixPtr, srcSuffix)) {
                break;
            }
        }

        /* check suffix is authorized */
        if (sfnSize <= srcSuffixLen || *matchedSuffixPtr == NULL) {
            FUNC0(1,
                "zstd: %s: unknown suffix (%s expected). "
                "Can't derive the output file name. "
                "Specify it with -o dstFileName. Ignoring.\n",
                srcFileName, suffixListStr);
            return NULL;
        }

        if ((*matchedSuffixPtr)[1] == 't') {
            dstSuffix = ".tar";
            dstSuffixLen = FUNC10(dstSuffix);
        }
    }

    if (outDirName) {
        outDirFilename = FUNC2(srcFileName, outDirName, 0);
        sfnSize = FUNC10(outDirFilename);
        FUNC3(outDirFilename != NULL);
    }

    if (dfnbCapacity+srcSuffixLen <= sfnSize+1+dstSuffixLen) {
        /* allocate enough space to write dstFilename into it */
        FUNC4(dstFileNameBuffer);
        dfnbCapacity = sfnSize + 20;
        dstFileNameBuffer = (char*)FUNC5(dfnbCapacity);
        if (dstFileNameBuffer==NULL)
            FUNC1(74, "%s : not enough memory for dstFileName",
                      FUNC9(errno));
    }

    /* return dst name == src name truncated from suffix */
    FUNC3(dstFileNameBuffer != NULL);
    dstFileNameEndPos = sfnSize - srcSuffixLen;
    if (outDirFilename) {
        FUNC6(dstFileNameBuffer, outDirFilename, dstFileNameEndPos);
        FUNC4(outDirFilename);
    } else {
        FUNC6(dstFileNameBuffer, srcFileName, dstFileNameEndPos);
    }

    /* The short tar extensions tzst, tgz, txz and tlz4 files should have "tar"
     * extension on decompression. Also writes terminating null. */
    FUNC8(dstFileNameBuffer + dstFileNameEndPos, dstSuffix);
    return dstFileNameBuffer;

    /* note : dstFileNameBuffer memory is not going to be free */
}