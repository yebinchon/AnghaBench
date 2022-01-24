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
typedef  int /*<<< orphan*/  BMK_benchOutcome_t ;
typedef  int /*<<< orphan*/  BMK_advancedParams_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const*,unsigned int,int,int /*<<< orphan*/  const*,void const*,size_t,int,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

BMK_benchOutcome_t FUNC2(const void* srcBuffer, size_t srcSize,
                        const size_t* fileSizes, unsigned nbFiles,
                        int cLevel, const ZSTD_compressionParameters* comprParams,
                        const void* dictBuffer, size_t dictBufferSize,
                        int displayLevel, const char* displayName) {

    BMK_advancedParams_t const adv = FUNC1();
    return FUNC0(srcBuffer, srcSize,
                                NULL, 0,
                                fileSizes, nbFiles,
                                cLevel, comprParams,
                                dictBuffer, dictBufferSize,
                                displayLevel, displayName, &adv);
}