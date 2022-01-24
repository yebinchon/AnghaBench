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
typedef  int /*<<< orphan*/  resources ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,char const* const,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char const**,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const* const,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 size_t FUNC6 (char const* const) ; 

int FUNC7(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc<2) {
        FUNC5("wrong arguments\n");
        FUNC5("usage:\n");
        FUNC5("%s FILE(s)\n", exeName);
        return 1;
    }

    /* memory allocation for outFilename and resources */
    char* outFilename;
    size_t outFilenameBufferLen;
    resources const ress = FUNC2(argc, argv, &outFilename, &outFilenameBufferLen);

    /* compress files with shared context, input and output buffers */
    int argNb;
    for (argNb = 1; argNb < argc; argNb++) {
        const char* const inFilename = argv[argNb];
        size_t const inFilenameLen = FUNC6(inFilename);
        FUNC0(inFilenameLen + 5 <= outFilenameBufferLen, "File name too long!");
        FUNC4(outFilename, inFilename, inFilenameLen);
        FUNC4(outFilename+inFilenameLen, ".zst", 5);
        FUNC1(ress, inFilename, outFilename);
    }

    /* free memory */
    FUNC3(ress,outFilename);

    FUNC5("compressed %i files \n", argc-1);

    return 0;
}