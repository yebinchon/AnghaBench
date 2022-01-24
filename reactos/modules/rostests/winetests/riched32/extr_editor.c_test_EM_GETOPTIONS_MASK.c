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
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECO_AUTOVSCROLL ; 
 int /*<<< orphan*/  EM_GETOPTIONS ; 
 int /*<<< orphan*/  RICHEDIT_CLASS10A ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WS_HSCROLL ; 
 int WS_POPUP ; 
 int WS_VSCROLL ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  hmoduleRichEdit ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    HWND hwnd;
    DWORD options;

    hwnd = FUNC0(RICHEDIT_CLASS10A, NULL,
                        WS_POPUP,
                        0, 0, 200, 60, NULL, NULL, hmoduleRichEdit, NULL);
    options = FUNC2(hwnd, EM_GETOPTIONS, 0, 0);
    FUNC4(options == 0, "Incorrect options %x\n", options);
    FUNC1(hwnd);

    hwnd = FUNC0(RICHEDIT_CLASS10A, NULL,
                        WS_POPUP|WS_VSCROLL|WS_HSCROLL,
                        0, 0, 200, 60, NULL, NULL, hmoduleRichEdit, NULL);
    options = FUNC2(hwnd, EM_GETOPTIONS, 0, 0);
    FUNC4(options == ECO_AUTOVSCROLL ||
       FUNC3(options == 0), /* Win9x, WinME and NT4 */
       "Incorrect initial options %x\n", options);
    FUNC1(hwnd);
}