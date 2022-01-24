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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  char WCHAR ;
typedef  int LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_GETCUEBANNER ; 
 int /*<<< orphan*/  EM_SETCUEBANNER ; 
 int ES_AUTOHSCROLL ; 
 int ES_AUTOVSCROLL ; 
 int ES_MULTILINE ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HWND hwnd_edit;
    BOOL ret;
    static WCHAR getcuetestW[5] = {'T',0};
    static const WCHAR testcmp1W[] = {'T','e','s','t',0};
    static const WCHAR testcmp2W[] = {'T','e','s',0};
    static const WCHAR emptyW[] = {0};

    hwnd_edit = FUNC2(ES_AUTOHSCROLL | ES_AUTOVSCROLL, 0);

    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 5);
    if (FUNC3(getcuetestW, emptyW) != 0)
    {
        FUNC8("skipping for Win XP and 2003 Server.\n");
        FUNC0(hwnd_edit);
        return;
    }
    FUNC7(FUNC3(getcuetestW, emptyW) == 0, "First char is %c\n", getcuetestW[0]);
    FUNC7(ret == FALSE, "EM_GETCUEBANNER should have returned FALSE.\n");

    FUNC4(getcuetestW, testcmp1W);
    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 0);
    FUNC7(FUNC3(getcuetestW, testcmp1W) == 0, "String was %s.\n", FUNC9(getcuetestW));
    FUNC7(ret == FALSE, "EM_GETCUEBANNER should have returned FALSE.\n");

    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, 0, 0);
    FUNC7(ret == FALSE, "EM_GETCUEBANNER should have returned FALSE.\n");

    ret = FUNC1(hwnd_edit, EM_SETCUEBANNER, 0, 0);
    FUNC7(ret == FALSE, "EM_SETCUEBANNER should have returned FALSE.\n");

    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, 0, 0);
    FUNC7(ret == FALSE, "EM_GETCUEBANNER should have returned FALSE.\n");

    FUNC4(getcuetestW, testcmp1W);
    ret = FUNC1(hwnd_edit, EM_SETCUEBANNER, 0, (LPARAM)getcuetestW);
    FUNC7(ret == TRUE, "EM_SETCUEBANNER should have returned TRUE.\n");

    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, 0, 5);
    FUNC7(ret == TRUE, "EM_GETCUEBANNER should have returned TRUE.\n");

    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 5);
    FUNC7(ret == TRUE, "EM_GETCUEBANNER should have returned TRUE.\n");
    FUNC7(FUNC3(getcuetestW, testcmp1W) == 0, "EM_GETCUEBANNER returned string %s.\n", FUNC9(getcuetestW));

    ret = FUNC1(hwnd_edit, EM_SETCUEBANNER, 0, (LPARAM)emptyW);
    FUNC7(ret == TRUE, "EM_SETCUEBANNER should have returned TRUE.\n");

    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 5);
    FUNC7(ret == TRUE, "EM_GETCUEBANNER should have returned TRUE.\n");
    FUNC7(FUNC3(getcuetestW, emptyW) == 0, "EM_GETCUEBANNER returned string %s.\n", FUNC9(getcuetestW));

    /* EM_GETCUEBANNER's buffer size includes null char */
    ret = FUNC1(hwnd_edit, EM_SETCUEBANNER, 0, (LPARAM)testcmp1W);
    FUNC7(ret == TRUE, "EM_SETCUEBANNER should have returned TRUE.\n");
    FUNC6(getcuetestW, 0, FUNC5(testcmp1W)*sizeof(WCHAR));
    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, (LPARAM)FUNC5(testcmp1W)+1);
    FUNC7(ret == TRUE, "EM_GETCUEBANNER should have returned TRUE.\n");
    FUNC7(FUNC3(getcuetestW, testcmp1W) == 0, "EM_GETCUEBANNER returned string %s.\n", FUNC9(getcuetestW));
    FUNC6(getcuetestW, 0, FUNC5(testcmp1W)*sizeof(WCHAR));
    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, (LPARAM)FUNC5(testcmp1W));
    FUNC7(FUNC3(getcuetestW, testcmp2W) == 0, "EM_GETCUEBANNER returned string %s.\n", FUNC9(getcuetestW));
    FUNC0(hwnd_edit);

    /* setting cue banner fails for multi-line edit controls */
    hwnd_edit = FUNC2(ES_AUTOHSCROLL | ES_AUTOVSCROLL | ES_MULTILINE, 0);
    FUNC4(getcuetestW, testcmp1W);
    ret = FUNC1(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 5);
    FUNC7(ret == FALSE, "EM_SETCUEBANNER.\n");
    FUNC7(FUNC3(getcuetestW, testcmp1W) == 0, "String was %s.\n", FUNC9(getcuetestW));
    ret = FUNC1(hwnd_edit, EM_SETCUEBANNER, 0, (LPARAM)getcuetestW);
    FUNC7(ret == FALSE, "EM_SETCUEBANNER.\n");

    FUNC0(hwnd_edit);
}