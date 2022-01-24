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
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETTEXTLENGTH ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  is_lang_japanese ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HWND hwndRichEdit = FUNC3(NULL);
    static const char text1[] = "aaa\r\nbbb\r\nccc\r\nddd\r\neee";
    static const char text2[] = "aaa\r\nbbb\r\nccc\r\nddd\r\neee\r\n";
    static const char text3[] = "abcdef\x8e\xf0";
    int result;

    /* Test for WM_GETTEXTLENGTH */
    FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text1);
    result = FUNC1(hwndRichEdit, WM_GETTEXTLENGTH, 0, 0);
    FUNC4(result == FUNC2(text1),
       "WM_GETTEXTLENGTH reports incorrect length %d, expected %d\n",
       result, FUNC2(text1));

    FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text2);
    result = FUNC1(hwndRichEdit, WM_GETTEXTLENGTH, 0, 0);
    FUNC4(result == FUNC2(text2),
       "WM_GETTEXTLENGTH reports incorrect length %d, expected %d\n",
       result, FUNC2(text2));

    /* Test with multibyte character */
    if (!is_lang_japanese)
        FUNC5("Skip multibyte character tests on non-Japanese platform\n");
    else
    {
        FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text3);
        result = FUNC1(hwndRichEdit, WM_GETTEXTLENGTH, 0, 0);
        FUNC4(result == 8, "WM_GETTEXTLENGTH returned %d, expected 8\n", result);
    }

    FUNC0(hwndRichEdit);
}