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
 int COMPRESSIBILITY_DEFAULT ; 
 unsigned int DEFAULT_CLEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned int NBLOOPS ; 
 scalar_t__ kSampleSizeDefault ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char* exename)
{
    FUNC1(exename);
    FUNC0( "\nAdvanced options :\n");
    FUNC0( " -b#    : test only function # \n");
    FUNC0( " -l#    : benchmark functions at that compression level (default : %i)\n", DEFAULT_CLEVEL);
    FUNC0( "--zstd= : custom parameter selection. Format same as zstdcli \n");
    FUNC0( " -P#    : sample compressibility (default : %.1f%%)\n", COMPRESSIBILITY_DEFAULT * 100);
    FUNC0( " -B#    : sample size (default : %u)\n", (unsigned)kSampleSizeDefault);
    FUNC0( " -i#    : iteration loops [1-9](default : %i)\n", NBLOOPS);
    return 0;
}