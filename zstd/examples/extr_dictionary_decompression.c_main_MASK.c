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
typedef  int /*<<< orphan*/  ZSTD_DDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC1 (char const* const) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int FUNC4(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc<3) {
        FUNC3("wrong arguments\n");
        FUNC3("usage:\n");
        FUNC3("%s [FILES] dictionary\n", exeName);
        return 1;
    }

    /* load dictionary only once */
    const char* const dictName = argv[argc-1];
    ZSTD_DDict* const dictPtr = FUNC1(dictName);

    int u;
    for (u=1; u<argc-1; u++) FUNC2(argv[u], dictPtr);

    FUNC0(dictPtr);
    FUNC3("All %u files correctly decoded (in memory) \n", argc-2);
    return 0;
}