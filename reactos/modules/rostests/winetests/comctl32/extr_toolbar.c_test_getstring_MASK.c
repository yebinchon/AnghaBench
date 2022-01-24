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
typedef  int /*<<< orphan*/  strW ;
typedef  int /*<<< orphan*/  str ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_ADDSTRINGA ; 
 int /*<<< orphan*/  TB_GETSTRINGA ; 
 int /*<<< orphan*/  TB_GETSTRINGW ; 
 int /*<<< orphan*/  TOOLBARCLASSNAMEA ; 
 int WS_CHILD ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  hMainWnd ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    HWND hToolbar = NULL;
    char str[10];
    WCHAR strW[10];
    static const char answer[] = "STR";
    static const WCHAR answerW[] = { 'S','T','R',0 };
    INT r;

    hToolbar = FUNC0(0, TOOLBARCLASSNAMEA, NULL, WS_CHILD | WS_VISIBLE, 0, 0, 0, 0, hMainWnd, (HMENU)5, FUNC2(NULL), NULL);
    FUNC10(hToolbar != NULL, "Toolbar creation problem\n");

    r = FUNC4(hToolbar, TB_GETSTRINGA, FUNC3(0, 0), 0);
    if (r == 0)
    {
        FUNC11("TB_GETSTRINGA and TB_GETSTRINGW need 5.80\n");
        FUNC1(hToolbar);
        return;
    }
    FUNC6(-1, r);
    r = FUNC5(hToolbar, TB_GETSTRINGW, FUNC3(0, 0), 0);
    FUNC6(-1, r);
    r = FUNC4(hToolbar, TB_ADDSTRINGA, 0, (LPARAM)answer);
    FUNC6(0, r);
    r = FUNC4(hToolbar, TB_GETSTRINGA, FUNC3(0, 0), 0);
    FUNC6(FUNC9(answer), r);
    r = FUNC5(hToolbar, TB_GETSTRINGW, FUNC3(0, 0), 0);
    FUNC6(FUNC9(answer), r);
    r = FUNC4(hToolbar, TB_GETSTRINGA, FUNC3(sizeof(str), 0), (LPARAM)str);
    FUNC6(FUNC9(answer), r);
    FUNC6(0, FUNC7(answer, str));
    r = FUNC5(hToolbar, TB_GETSTRINGW, FUNC3(sizeof(strW), 0), (LPARAM)strW);
    FUNC6(FUNC9(answer), r);
    FUNC6(0, FUNC8(answerW, strW));

    FUNC1(hToolbar);
}