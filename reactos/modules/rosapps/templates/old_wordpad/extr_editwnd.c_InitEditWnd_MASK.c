#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_3__ {int /*<<< orphan*/ * hEdit; int /*<<< orphan*/  hSelf; } ;
typedef  TYPE_1__* PEDIT_WND_INFO ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEFAULT_GUI_FONT ; 
 int ES_AUTOHSCROLL ; 
 int ES_AUTOVSCROLL ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RICHEDIT_CLASS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETFONT ; 
 int WS_CHILD ; 
 int WS_HSCROLL ; 
 int WS_VISIBLE ; 
 int WS_VSCROLL ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  hInstance ; 

__attribute__((used)) static BOOL
FUNC7(PEDIT_WND_INFO Info)
{
    HANDLE hDLL;
    HFONT hfDefault;

    hDLL = FUNC3(FUNC6("RICHED20.DLL"));
    if (hDLL == NULL)
    {
        FUNC1(0);
        return FALSE;
    }

    Info->hEdit = FUNC0(0, //WS_EX_CLIENTEDGE,
                                 RICHEDIT_CLASS,
                                 NULL,
                                 WS_CHILD | WS_VISIBLE | WS_VSCROLL | WS_HSCROLL |
                                   ES_MULTILINE | ES_AUTOVSCROLL | ES_AUTOHSCROLL,
                                 0,
                                 0,
                                 100,
                                 100,
                                 Info->hSelf,
                                 NULL,
                                 hInstance,
                                 NULL);
    if(Info->hEdit == NULL)
    {
        FUNC1(0);

        return FALSE;
    }

    hfDefault = (HFONT) FUNC2(DEFAULT_GUI_FONT);
    FUNC5(Info->hEdit,
                WM_SETFONT,
                (WPARAM)hfDefault,
                FUNC4(FALSE, 0));

    return TRUE;
}