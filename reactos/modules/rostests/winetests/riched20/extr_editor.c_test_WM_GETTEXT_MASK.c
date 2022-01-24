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
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETTEXT ; 
 int /*<<< orphan*/  WM_GETTEXTLENGTH ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    HWND hwndRichEdit = FUNC4(NULL);
    static const char text[] = "Hello. My name is RichEdit!";
    static const char text2[] = "Hello. My name is RichEdit!\r";
    static const char text2_after[] = "Hello. My name is RichEdit!\r\n";
    char buffer[1024] = {0};
    int result;

    /* Baseline test with normal-sized buffer */
    FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text);
    result = FUNC1(hwndRichEdit, WM_GETTEXT, 1024, (LPARAM)buffer);
    FUNC5(result == FUNC2(buffer),
        "WM_GETTEXT returned %d, expected %d\n", result, FUNC2(buffer));
    FUNC1(hwndRichEdit, WM_GETTEXT, 1024, (LPARAM)buffer);
    result = FUNC6(buffer,text);
    FUNC5(result == 0, 
        "WM_GETTEXT: settext and gettext differ. strcmp: %d\n", result);

    /* Test for returned value of WM_GETTEXTLENGTH */
    result = FUNC1(hwndRichEdit, WM_GETTEXTLENGTH, 0, 0);
    FUNC5(result == FUNC2(text),
        "WM_GETTEXTLENGTH reports incorrect length %d, expected %d\n",
        result, FUNC2(text));

    /* Test for behavior in overflow case */
    FUNC3(buffer, 0, 1024);
    result = FUNC1(hwndRichEdit, WM_GETTEXT, FUNC7(text), (LPARAM)buffer);
    FUNC5(result == 0 ||
       result == FUNC2(text) - 1, /* XP, win2k3 */
        "WM_GETTEXT returned %d, expected 0 or %d\n", result, FUNC2(text) - 1);
    result = FUNC6(buffer,text);
    if (result)
        result = FUNC8(buffer, text, FUNC2(text) - 1); /* XP, win2k3 */
    FUNC5(result == 0,
        "WM_GETTEXT: settext and gettext differ. strcmp: %d\n", result);

    /* Baseline test with normal-sized buffer and carriage return */
    FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text2);
    result = FUNC1(hwndRichEdit, WM_GETTEXT, 1024, (LPARAM)buffer);
    FUNC5(result == FUNC2(buffer),
        "WM_GETTEXT returned %d, expected %d\n", result, FUNC2(buffer));
    result = FUNC6(buffer,text2_after);
    FUNC5(result == 0,
        "WM_GETTEXT: settext and gettext differ. strcmp: %d\n", result);

    /* Test for returned value of WM_GETTEXTLENGTH */
    result = FUNC1(hwndRichEdit, WM_GETTEXTLENGTH, 0, 0);
    FUNC5(result == FUNC2(text2_after),
        "WM_GETTEXTLENGTH reports incorrect length %d, expected %d\n",
        result, FUNC2(text2_after));

    /* Test for behavior of CRLF conversion in case of overflow */
    FUNC3(buffer, 0, 1024);
    result = FUNC1(hwndRichEdit, WM_GETTEXT, FUNC7(text2), (LPARAM)buffer);
    FUNC5(result == 0 ||
       result == FUNC2(text2) - 1, /* XP, win2k3 */
        "WM_GETTEXT returned %d, expected 0 or %d\n", result, FUNC2(text2) - 1);
    result = FUNC6(buffer,text2);
    if (result)
        result = FUNC8(buffer, text2, FUNC2(text2) - 1); /* XP, win2k3 */
    FUNC5(result == 0,
        "WM_GETTEXT: settext and gettext differ. strcmp: %d\n", result);

    FUNC0(hwndRichEdit);
}