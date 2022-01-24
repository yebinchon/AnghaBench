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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ g_timeLimit_s ; 

__attribute__((used)) static int FUNC1(void)
{
    FUNC0( "\nAdvanced options :\n");
    FUNC0( " -T#          : set level 1 speed objective \n");
    FUNC0( " -B#          : cut input into blocks of size # (default : single block) \n");
    FUNC0( " --optimize=  : same as -O with more verbose syntax (see README.md)\n");
    FUNC0( " -S           : Single run \n");
    FUNC0( " --zstd       : Single run, parameter selection same as zstdcli \n");
    FUNC0( " -P#          : generated sample compressibility (default : %.1f%%) \n", COMPRESSIBILITY_DEFAULT * 100);
    FUNC0( " -t#          : Caps runtime of operation in seconds (default : %u seconds (%.1f hours)) \n",
                                (unsigned)g_timeLimit_s, (double)g_timeLimit_s / 3600);
    FUNC0( " -v           : Prints Benchmarking output\n");
    FUNC0( " -D           : Next argument dictionary file\n");
    FUNC0( " -s           : Seperate Files\n");
    return 0;
}