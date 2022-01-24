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
typedef  char const WCHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,int) ; 

__attribute__((used)) static BOOL FUNC10(unsigned line, const char *contents, BOOL unicode)
{
    int lenA;
    BOOL ret;

    lenA = FUNC8(contents);

    if (unicode)
    {
        int len = FUNC5(CP_UTF8, 0, contents, lenA, NULL, 0);
        int size = len * sizeof(WCHAR);
        WCHAR *wstr = FUNC3(FUNC2(), 0, size);
        if (!wstr) return FALSE;
        FUNC5(CP_UTF8, 0, contents, lenA, wstr, len);

        ret = FUNC9(wstr, size);
        FUNC4(FUNC2(), 0, wstr);
    }
    else
        ret = FUNC9(contents, lenA);

    if (!ret) return FALSE;

    FUNC7("regedit.exe /s test.reg");

    ret = FUNC0("test.reg");
    FUNC6(ret, "DeleteFile failed: %u\n", FUNC1());

    return ret;
}