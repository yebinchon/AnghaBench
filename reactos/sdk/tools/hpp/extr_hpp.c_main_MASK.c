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
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(int argc, char* argv[])
{
    char *pszInFile, *pszOutFile;
    FILE* fileOut;
    int ret;

    if (argc != 3)
    {
        FUNC2("Usage: hpp <inputfile> <outputfile>\n");
        FUNC3(1);
    }

    pszInFile = FUNC1(argv[1]);
    pszOutFile = FUNC1(argv[2]);

    fileOut = FUNC5(pszOutFile, "wb");
    if (fileOut == NULL)
    {
        FUNC2("Cannot open output file %s", pszOutFile);
        FUNC3(1);
    }

    ret = FUNC0(pszInFile, fileOut);

    FUNC4(fileOut);
    FUNC6(pszInFile);
    FUNC6(pszOutFile);

    return ret;
}