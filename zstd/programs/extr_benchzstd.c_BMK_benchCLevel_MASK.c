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
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
struct TYPE_4__ {int blockSize; int /*<<< orphan*/  nbSeconds; int /*<<< orphan*/  additionalParam; scalar_t__ realTime; } ;
typedef  int /*<<< orphan*/  BMK_benchOutcome_t ;
typedef  TYPE_1__ BMK_advancedParams_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const*,unsigned int,int,int /*<<< orphan*/  const*,void const*,size_t,int,char const*,TYPE_1__ const* const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  SET_REALTIME_PRIORITY ; 
 int /*<<< orphan*/  ZSTD_GIT_COMMIT_STRING ; 
 int /*<<< orphan*/  ZSTD_VERSION_STRING ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static BMK_benchOutcome_t FUNC4(const void* srcBuffer, size_t benchedSize,
                            const size_t* fileSizes, unsigned nbFiles,
                            int cLevel, const ZSTD_compressionParameters* comprParams,
                            const void* dictBuffer, size_t dictBufferSize,
                            int displayLevel, const char* displayName,
                            BMK_advancedParams_t const * const adv)
{
    const char* pch = FUNC3(displayName, '\\'); /* Windows */
    if (!pch) pch = FUNC3(displayName, '/');    /* Linux */
    if (pch) displayName = pch+1;

    if (adv->realTime) {
        FUNC2(2, "Note : switching to real-time priority \n");
        SET_REALTIME_PRIORITY;
    }

    if (displayLevel == 1 && !adv->additionalParam)   /* --quiet mode */
        FUNC1("bench %s %s: input %u bytes, %u seconds, %u KB blocks\n",
                ZSTD_VERSION_STRING, ZSTD_GIT_COMMIT_STRING,
                (unsigned)benchedSize, adv->nbSeconds, (unsigned)(adv->blockSize>>10));

    return FUNC0(srcBuffer, benchedSize,
                                NULL, 0,
                                fileSizes, nbFiles,
                                cLevel, comprParams,
                                dictBuffer, dictBufferSize,
                                displayLevel, displayName, adv);
}