#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int flags; int idResult; } ;
struct TYPE_12__ {scalar_t__ message; int wParam; } ;
struct TYPE_11__ {int state; } ;
typedef  TYPE_1__* PWND ;
typedef  TYPE_2__ MSG ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  scalar_t__ HWND ;
typedef  TYPE_3__ DIALOGINFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int DF_END ; 
 int DS_NOIDLEMSG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FALSE ; 
 TYPE_3__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  MSGF_DIALOGBOX ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  VK_CONTROL ; 
 TYPE_1__* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  WM_COPY ; 
 int /*<<< orphan*/  WM_ENTERIDLE ; 
 scalar_t__ WM_KEYDOWN ; 
 scalar_t__ WM_QUIT ; 
 scalar_t__ WM_TIMER ; 
 int WNDS_MSGBOX ; 

INT FUNC15( HWND hwnd, HWND owner )
{
    DIALOGINFO * dlgInfo;
    MSG msg;
    INT retval;
    BOOL bFirstEmpty;
    PWND pWnd;

    pWnd = FUNC14(hwnd);
    if (!pWnd) return -1;

    if (!(dlgInfo = FUNC2(hwnd))) return -1;

    bFirstEmpty = TRUE;
    if (!(dlgInfo->flags & DF_END)) /* was EndDialog called in WM_INITDIALOG ? */
    {
        for (;;)
        {
            if (!FUNC9( &msg, 0, 0, 0, PM_REMOVE ))
            {
                if (bFirstEmpty)
                {
                    /* ShowWindow the first time the queue goes empty */
                    FUNC12( hwnd, SW_SHOWNORMAL );
                    bFirstEmpty = FALSE;
                }
                if (!(FUNC6( hwnd, GWL_STYLE ) & DS_NOIDLEMSG))
               {
                    /* No message present -> send ENTERIDLE and wait */
                    FUNC11( owner, WM_ENTERIDLE, MSGF_DIALOGBOX, (LPARAM)hwnd );
                }
                FUNC5( &msg, 0, 0, 0 );
            }

            if (msg.message == WM_QUIT)
            {
                FUNC10( msg.wParam );
                if (!FUNC8( hwnd )) return 0;
                break;
            }

            /*
             * If the user is pressing Ctrl+C, send a WM_COPY message.
             * Guido Pola, CORE-4829, Is there another way to check if the Dialog is a MessageBox?
             */
            if (msg.message == WM_KEYDOWN &&
                pWnd->state & WNDS_MSGBOX && // Yes!
                FUNC3() == hwnd)
            {
                if (msg.wParam == L'C' && FUNC4(VK_CONTROL) < 0)
                    FUNC11(hwnd, WM_COPY, 0, 0);
            }

            if (!FUNC8( hwnd )) return 0;
            if (!(dlgInfo->flags & DF_END) && !FUNC7( hwnd, &msg))
            {
                FUNC13( &msg );
                FUNC1( &msg );
            }
            if (!FUNC8( hwnd )) return 0;
            if (dlgInfo->flags & DF_END) break;

            if (bFirstEmpty && msg.message == WM_TIMER)
            {
                FUNC12( hwnd, SW_SHOWNORMAL );
                bFirstEmpty = FALSE;
            }
        }
    }
    retval = dlgInfo->idResult;
    FUNC0( hwnd );
    return retval;
}