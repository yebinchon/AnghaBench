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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  UTIL_compareStr ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 char* FUNC5 (char const*,char const) ; 

int FUNC6(const char** filenameTable, unsigned nbFiles) {
    const char **filenameTableSorted, *c, *prevElem, *filename;
    unsigned u;

    #if defined(_MSC_VER) || defined(__MINGW32__) || defined (__MSVCRT__) /* windows support */
    c = "\\";
    #else
    c = "/";
    #endif

    filenameTableSorted = (const char**) FUNC2(sizeof(char*) * nbFiles);
    if (!filenameTableSorted) {
        FUNC0("Unable to malloc new str array, not checking for name collisions\n");
        return 1;
    }

    for (u = 0; u < nbFiles; ++u) {
        filename = FUNC5(filenameTable[u], c[0]);
        if (filename == NULL) {
            filenameTableSorted[u] = filenameTable[u];
        } else {
            filenameTableSorted[u] = filename+1;
        }
    }

    FUNC3((void*)filenameTableSorted, nbFiles, sizeof(char*), UTIL_compareStr);
    prevElem = filenameTableSorted[0];
    for (u = 1; u < nbFiles; ++u) {
        if (FUNC4(prevElem, filenameTableSorted[u]) == 0) {
            FUNC0("WARNING: Two files have same filename: %s\n", prevElem);
        }
        prevElem = filenameTableSorted[u];
    }

    FUNC1((void*)filenameTableSorted);
    return 0;
}