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
struct extract_context {char* base_path; } ;
struct chmFile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHM_ENUMERATE_ALL ; 
 int /*<<< orphan*/  _extract_callback ; 
 int /*<<< orphan*/  FUNC0 (struct chmFile*) ; 
 int /*<<< orphan*/  FUNC1 (struct chmFile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct chmFile* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(int c, char **v)
{
    struct chmFile *h;
    struct extract_context ec;

    if (c < 3)
    {
        FUNC4(stderr, "usage: %s <chmfile> <outdir>\n", v[0]);
        FUNC3(1);
    }

    h = FUNC2(v[1]);
    if (h == NULL)
    {
        FUNC4(stderr, "failed to open %s\n", v[1]);
        FUNC3(1);
    }

    FUNC5("%s:\n", v[1]);
    ec.base_path = v[2];
    if (! FUNC1(h,
                        CHM_ENUMERATE_ALL,
                        _extract_callback,
                        (void *)&ec))
        FUNC5("   *** ERROR ***\n");

    FUNC0(h);

    return 0;
}