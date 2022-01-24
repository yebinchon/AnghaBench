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
 int /*<<< orphan*/  BENCH_TIME_DEFAULT_S ; 
 int /*<<< orphan*/  CLEVEL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

int FUNC1(const char* exeName)
{
    FUNC0 (" \n");
    FUNC0 (" %s [Options] filename(s) \n", exeName);
    FUNC0 (" \n");
    FUNC0 ("Options : \n");
    FUNC0 ("-r          : recursively load all files in subdirectories (default: off) \n");
    FUNC0 ("-B#         : split input into blocks of size # (default: no split) \n");
    FUNC0 ("-#          : use compression level # (default: %u) \n", CLEVEL_DEFAULT);
    FUNC0 ("-D #        : use # as a dictionary (default: create one) \n");
    FUNC0 ("-i#         : nb benchmark rounds (default: %u) \n", BENCH_TIME_DEFAULT_S);
    FUNC0 ("--nbBlocks=#: use # blocks for bench (default: one per file) \n");
    FUNC0 ("--nbDicts=# : create # dictionaries for bench (default: one per block) \n");
    FUNC0 ("-h          : help (this text) \n");
    return 0;
}