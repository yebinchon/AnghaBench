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
typedef  int /*<<< orphan*/  ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char* const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC2 (char const* const,int const) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char* const) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(int argc, const char** argv)
{
    const char* const exeName = argv[0];
    int const cLevel = 3;

    if (argc<3) {
        FUNC4(stderr, "wrong arguments\n");
        FUNC4(stderr, "usage:\n");
        FUNC4(stderr, "%s [FILES] dictionary\n", exeName);
        return 1;
    }

    /* load dictionary only once */
    const char* const dictName = argv[argc-1];
    ZSTD_CDict* const dictPtr = FUNC2(dictName, cLevel);

    int u;
    for (u=1; u<argc-1; u++) {
        const char* inFilename = argv[u];
        char* const outFilename = FUNC3(inFilename);
        FUNC1(inFilename, outFilename, dictPtr);
        FUNC5(outFilename);
    }

    FUNC0(dictPtr);
    FUNC6("All %u files compressed. \n", argc-2);
    return 0;
}