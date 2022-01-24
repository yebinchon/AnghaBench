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
typedef  float WCHAR ;
typedef  int /*<<< orphan*/  IFileDialog ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SHOWDROPDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  WM_LBUTTONDOWN ; 
 int /*<<< orphan*/  WM_LBUTTONUP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(IFileDialog *pfd, HWND dlg_hwnd)
{
    HWND cb_filetype;
    const WCHAR filetype1[] = {'f','n','a','m','e','1',0};
    const WCHAR filetype1_broken[] = {'f','n','a','m','e','1',' ', '(','*','.','t','x','t',')',0};

    cb_filetype = FUNC2(dlg_hwnd, NULL, filetype1);
    FUNC3(cb_filetype != NULL || FUNC1(cb_filetype == NULL), "Could not find combobox on first attempt\n");

    if(!cb_filetype)
    {
        /* Not sure when this happens. Some specific version?
         * Seen on 32-bit English Vista */
        FUNC4("Didn't find combobox on first attempt, trying broken string..\n");
        cb_filetype = FUNC2(dlg_hwnd, NULL, filetype1_broken);
        FUNC3(FUNC1(cb_filetype != NULL), "Failed to find combobox on second attempt\n");
        if(!cb_filetype)
            return;
    }

    /* Making the combobox send a CBN_SELCHANGE */
    FUNC0( cb_filetype, CB_SHOWDROPDOWN, 1, 0 );
    FUNC0( cb_filetype, CB_SETCURSEL, 1, 0 );
    FUNC0( cb_filetype, WM_LBUTTONDOWN, 0, -1 );
    FUNC0( cb_filetype, WM_LBUTTONUP, 0, -1 );
}