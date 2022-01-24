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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const* const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC3(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc!=4) {
        FUNC2(stderr, "wrong arguments\n");
        FUNC2(stderr, "usage:\n");
        FUNC2(stderr, "%s FILE START END\n", exeName);
        return 1;
    }

    {
        const char* const inFilename = argv[1];
        off_t const startOffset = FUNC0(argv[2]);
        off_t const endOffset = FUNC0(argv[3]);
        FUNC1(inFilename, startOffset, endOffset);
    }

    return 0;
}