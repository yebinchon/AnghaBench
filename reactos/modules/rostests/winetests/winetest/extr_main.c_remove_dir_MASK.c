#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* cFileName; char* cAlternateFileName; int dwFileAttributes; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  R_WARNING ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 size_t FUNC10 (char const*) ; 

__attribute__((used)) static void FUNC11 (const char *dir)
{
    HANDLE  hFind;
    WIN32_FIND_DATA wfd;
    char path[MAX_PATH];
    size_t dirlen = FUNC10 (dir);

    /* Make sure the directory exists before going further */
    FUNC7 (path, dir, dirlen);
    FUNC9 (path + dirlen++, "\\*");
    hFind = FUNC2 (path, &wfd);
    if (hFind == INVALID_HANDLE_VALUE) return;

    do {
        char *lp = wfd.cFileName;

        if (!lp[0]) lp = wfd.cAlternateFileName; /* ? FIXME not (!lp) ? */
        if (FUNC6 (lp)) continue;
        FUNC9 (path + dirlen, lp);
        if (FILE_ATTRIBUTE_DIRECTORY & wfd.dwFileAttributes)
            FUNC11(path);
        else if (!FUNC0 (path))
            FUNC8 (R_WARNING, "Can't delete file %s: error %d",
                    path, FUNC4 ());
    } while (FUNC3 (hFind, &wfd));
    FUNC1 (hFind);
    if (!FUNC5 (dir))
        FUNC8 (R_WARNING, "Can't remove directory %s: error %d",
                dir, FUNC4 ());
}