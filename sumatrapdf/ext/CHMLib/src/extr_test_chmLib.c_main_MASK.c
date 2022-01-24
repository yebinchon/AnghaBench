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
struct chmUnitInfo {int length; int space; scalar_t__ start; } ;
struct chmFile {int dummy; } ;
typedef  scalar_t__ LONGINT64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CHM_RESOLVE_SUCCESS ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 struct chmFile* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct chmFile*,char*,struct chmUnitInfo*) ; 
 scalar_t__ FUNC3 (struct chmFile*,struct chmUnitInfo*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC10(int c, char **v)
{
    struct chmFile *h;
    struct chmUnitInfo ui;

    if (c < 4)
    {
        FUNC7(stderr, "usage: %s <chmfile> <filename> <destfile>\n", v[0]);
        FUNC4(1);
    }

    h = FUNC1(v[1]);
    if (h == NULL)
    {
        FUNC7(stderr, "failed to open %s\n", v[1]);
        FUNC4(1);
    }

    FUNC9("resolving %s\n", v[2]);
    if (CHM_RESOLVE_SUCCESS == FUNC2(h, 
                                                  v[2],
                                                  &ui))
    {
#ifdef WIN32
        unsigned char *buffer = (unsigned char *)alloca((unsigned int)ui.length);
#else
        unsigned char buffer[ui.length];
#endif
        LONGINT64 gotLen;
        FILE *fout;
        FUNC9("    object: <%d, %lu, %lu>\n",
               ui.space,
               (unsigned long)ui.start,
               (unsigned long)ui.length);

        FUNC9("extracting to '%s'\n", v[3]);
        gotLen = FUNC3(h, &ui, buffer, 0, ui.length);
        if (gotLen == 0)
        {
            FUNC9("   extract failed\n");
            return 2;
        }
        else if ((fout = FUNC6(v[3], "wb")) == NULL)
        {
            FUNC9("   create failed\n");
            return 3;
        }
        else
        {
            FUNC8(buffer, 1, (unsigned int)ui.length, fout);
            FUNC5(fout);
            FUNC9("   finished\n");
        }
    }
    else
        FUNC9("    failed\n");

    return 0;
}