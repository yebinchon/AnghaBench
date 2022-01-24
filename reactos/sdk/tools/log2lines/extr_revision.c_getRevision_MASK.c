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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 char* opt_SourcesPath ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int*) ; 

int
FUNC6(char *fileName, int lastChanged)
{
    char s[LINESIZE];
    FILE *psvn;
    int rev = 0;

    if (!fileName)
        fileName = opt_SourcesPath;
    FUNC4(s, "svn info %s", fileName);
    if ((psvn = FUNC1(s, "r")))
    {
        while (FUNC2(s, LINESIZE, psvn))
        {
            if (lastChanged)
            {
                if (FUNC5(s, "Last Changed Rev: %d", &rev))
                    break;
            }
            else
            {
                if (FUNC5(s, "Revision: %d", &rev))
                    break;
            }
        }
    }
    else
        FUNC3(1, "Can't popen: \"%s\"\n", s);

    if (psvn)
        FUNC0(psvn);

    return rev;
}