#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cx; int cy; int x; int y; scalar_t__ flags; int /*<<< orphan*/ * hwndInsertAfter; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ WINDOWPOS ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int CCS_BOTTOM ; 
 int CCS_NODIVIDER ; 
 int CCS_NOMOVEY ; 
 int CCS_NOPARENTALIGN ; 
 int CCS_NORESIZE ; 
 int CCS_RIGHT ; 
 int CCS_TOP ; 
 int CCS_VERT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_DELETEBAND ; 
 int /*<<< orphan*/  REBARCLASSNAMEA ; 
 int /*<<< orphan*/  SIZE_RESTORED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SIZE ; 
 int /*<<< orphan*/  WM_WINDOWPOSCHANGED ; 
 int /*<<< orphan*/  WM_WINDOWPOSCHANGING ; 
 int WS_BORDER ; 
 int WS_CHILD ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  hMainWnd ; 
 int /*<<< orphan*/  height_change_notify_rect ; 

__attribute__((used)) static void FUNC11(void)
{
    DWORD dwStyles[] = {CCS_TOP, CCS_TOP | CCS_NODIVIDER, CCS_BOTTOM, CCS_BOTTOM | CCS_NODIVIDER, CCS_VERT, CCS_RIGHT,
        CCS_NOPARENTALIGN, CCS_NOPARENTALIGN | CCS_NODIVIDER, CCS_NORESIZE, CCS_NOMOVEY, CCS_NOMOVEY | CCS_VERT,
        CCS_TOP | WS_BORDER, CCS_NOPARENTALIGN | CCS_NODIVIDER | WS_BORDER, CCS_NORESIZE | WS_BORDER,
        CCS_NOMOVEY | WS_BORDER};

    const int styles_count = FUNC0(dwStyles);
    int i;

    for (i = 0; i < styles_count; i++)
    {
        HWND hRebar;

        FUNC10("style %08x", dwStyles[i]);
        FUNC7(&height_change_notify_rect, -1, -1, -1, -1);
        hRebar = FUNC1(REBARCLASSNAMEA, "A", dwStyles[i] | WS_CHILD | WS_VISIBLE, 10, 5, 500, 15, hMainWnd, NULL, FUNC3(NULL), 0);
        FUNC9();
        FUNC8(hRebar, NULL, 70, 100, 0);
        if (dwStyles[i] & CCS_NOPARENTALIGN)  /* the window drifts downward for CCS_NOPARENTALIGN without CCS_NODIVIDER */
            FUNC9();
        FUNC8(hRebar, NULL, 70, 100, 0);
        FUNC9();
        FUNC5(hRebar, 10, 10, 100, 100, TRUE);
        FUNC9();
        FUNC5(hRebar, 0, 0, 0, 0, TRUE);
        FUNC9();
        /* try to fool the rebar by sending invalid width/height - won't work */
        if (dwStyles[i] & (CCS_NORESIZE | CCS_NOPARENTALIGN))
        {
            WINDOWPOS pos;
            pos.hwnd = hRebar;
            pos.hwndInsertAfter = NULL;
            pos.cx = 500;
            pos.cy = 500;
            pos.x = 10;
            pos.y = 10;
            pos.flags = 0;
            FUNC6(hRebar, WM_WINDOWPOSCHANGING, 0, (LPARAM)&pos);
            FUNC6(hRebar, WM_WINDOWPOSCHANGED, 0, (LPARAM)&pos);
            FUNC9();
            FUNC6(hRebar, WM_SIZE, SIZE_RESTORED, FUNC4(500, 500));
            FUNC9();
        }
        FUNC6(hRebar, RB_DELETEBAND, 0, 0);
        FUNC9();
        FUNC6(hRebar, RB_DELETEBAND, 0, 0);
        FUNC5(hRebar, 0, 0, 100, 100, TRUE);
        FUNC9();
        FUNC2(hRebar);
    }
}