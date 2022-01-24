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
typedef  int /*<<< orphan*/  contexts_t ;
typedef  int /*<<< orphan*/  buffers_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const**,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ g_singleRun ; 

__attribute__((used)) static int FUNC7(const char** fileNamesTable, int nbFiles,
                      const char* dictFileName, int cLevel)
{
    buffers_t buf;
    contexts_t ctx;
    int ret = 0;

    if (FUNC3(&buf, fileNamesTable, nbFiles)) {
        FUNC1("unable to load files\n");
        return 1;
    }

    if (FUNC4(&ctx, dictFileName)) {
        FUNC1("unable to load dictionary\n");
        FUNC5(buf);
        return 2;
    }

    FUNC1("\r%79s\r", "");
    if (nbFiles == 1) {
        FUNC1("using %s : \n", fileNamesTable[0]);
    } else {
        FUNC1("using %d Files : \n", nbFiles);
    }

    if (g_singleRun) {
        ret = FUNC2(buf, ctx, cLevel);
    } else {
        FUNC0(buf, ctx);
    }

    FUNC5(buf);
    FUNC6(ctx);
    return ret;
}