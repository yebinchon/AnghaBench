#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dwFileAttributes; int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {char* File; } ;
typedef  TYPE_2__ MSISIGNATURE ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  char* LPWSTR ;
typedef  char* LPCWSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*,char*,scalar_t__*) ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 size_t FUNC10 (char*) ; 
 int FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  szDot ; 
 int /*<<< orphan*/  szDotDot ; 

__attribute__((used)) static UINT FUNC16(MSIPACKAGE *package, LPWSTR *appValue,
 MSISIGNATURE *sig, LPCWSTR dir, int depth)
{
    HANDLE hFind;
    WIN32_FIND_DATAW findData;
    UINT rc = ERROR_SUCCESS;
    size_t dirLen = FUNC10(dir), fileLen = FUNC10(sig->File);
    WCHAR subpath[MAX_PATH];
    WCHAR *buf;
    DWORD len;

    static const WCHAR starDotStarW[] = { '*','.','*',0 };

    FUNC6("Searching directory %s for file %s, depth %d\n", FUNC7(dir),
          FUNC7(sig->File), depth);

    if (depth < 0)
        return ERROR_SUCCESS;

    *appValue = NULL;
    /* We need the buffer in both paths below, so go ahead and allocate it
     * here.  Add two because we might need to add a backslash if the dir name
     * isn't backslash-terminated.
     */
    len = dirLen + FUNC11(fileLen, FUNC15(starDotStarW)) + 2;
    buf = FUNC12(len * sizeof(WCHAR));
    if (!buf)
        return ERROR_OUTOFMEMORY;

    FUNC9(buf, dir);
    FUNC4(buf);
    FUNC8(buf, sig->File);

    hFind = FUNC2(buf, &findData);
    if (hFind != INVALID_HANDLE_VALUE)
    {
        if (!(findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
        {
            BOOL matches;

            rc = FUNC0(sig, &findData, buf, &matches);
            if (rc == ERROR_SUCCESS && matches)
            {
                FUNC6("found file, returning %s\n", FUNC7(buf));
                *appValue = buf;
            }
        }
        FUNC1(hFind);
    }

    if (rc == ERROR_SUCCESS && !*appValue)
    {
        FUNC9(buf, dir);
        FUNC4(buf);
        FUNC8(buf, starDotStarW);

        hFind = FUNC2(buf, &findData);
        if (hFind != INVALID_HANDLE_VALUE)
        {
            if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY &&
                FUNC14( findData.cFileName, szDot ) &&
                FUNC14( findData.cFileName, szDotDot ))
            {
                FUNC9(subpath, dir);
                FUNC5(subpath, findData.cFileName);
                rc = FUNC16(package, appValue, sig,
                                                   subpath, depth - 1);
            }

            while (rc == ERROR_SUCCESS && !*appValue &&
                   FUNC3(hFind, &findData) != 0)
            {
                if (!FUNC14( findData.cFileName, szDot ) ||
                    !FUNC14( findData.cFileName, szDotDot ))
                    continue;

                FUNC9(subpath, dir);
                FUNC5(subpath, findData.cFileName);
                if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
                    rc = FUNC16(package, appValue,
                                                       sig, subpath, depth - 1);
            }

            FUNC1(hFind);
        }
    }

    if (*appValue != buf)
        FUNC13(buf);

    return rc;
}