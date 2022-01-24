#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_9__ {int /*<<< orphan*/  idResult; scalar_t__ hUserFont; int /*<<< orphan*/  yBaseUnit; int /*<<< orphan*/  xBaseUnit; } ;
struct TYPE_8__ {int style; int exStyle; scalar_t__ windowName; scalar_t__ className; scalar_t__ windowNameFree; scalar_t__ data; scalar_t__ id; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {int style; int /*<<< orphan*/  dialogEx; int /*<<< orphan*/  nbItems; } ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  scalar_t__ LPCSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ DLG_TEMPLATE ;
typedef  TYPE_2__ DLG_CONTROL_INFO ;
typedef  TYPE_3__ DIALOGINFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETSTYLE ; 
 int /*<<< orphan*/  BS_PUSHBUTTON ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int DLGC_DEFPUSHBUTTON ; 
 int DS_NOFAILCREATE ; 
 scalar_t__ FALSE ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETDLGCODE ; 
 int /*<<< orphan*/  WM_SETFONT ; 
 int WS_BORDER ; 
 int WS_CHILD ; 
 int WS_EX_CLIENTEDGE ; 
 int WS_EX_NOPARENTNOTIFY ; 
 int WS_POPUP ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC15( HWND hwnd, LPCSTR template, const DLG_TEMPLATE *dlgTemplate,
                                     HINSTANCE hInst, BOOL unicode )
{
    DIALOGINFO * dlgInfo;
    DLG_CONTROL_INFO info;
    HWND hwndCtrl, hwndDefButton = 0;
    INT items = dlgTemplate->nbItems;

    if (!(dlgInfo = FUNC3(hwnd))) return FALSE;

    FUNC11(" BEGIN\n" );
    while (items--)
    {
        template = (LPCSTR)FUNC2( (const WORD *)template, &info,
                                                dlgTemplate->dialogEx );
        info.style &= ~WS_POPUP;
        info.style |= WS_CHILD;

        if (info.style & WS_BORDER)
        {
            info.style &= ~WS_BORDER;
            info.exStyle |= WS_EX_CLIENTEDGE;
        }

        if (unicode)
        {
            hwndCtrl = FUNC1( info.exStyle | WS_EX_NOPARENTNOTIFY,
                                        info.className, info.windowName,
                                        info.style | WS_CHILD,
                                        FUNC9(info.x, dlgInfo->xBaseUnit, 4),
                                        FUNC9(info.y, dlgInfo->yBaseUnit, 8),
                                        FUNC9(info.cx, dlgInfo->xBaseUnit, 4),
                                        FUNC9(info.cy, dlgInfo->yBaseUnit, 8),
                                        hwnd, (HMENU)(ULONG_PTR)info.id,
                                        hInst, (LPVOID)info.data );
        }
        else
        {
            LPSTR class = (LPSTR)info.className;
            LPSTR caption = (LPSTR)info.windowName;

            if (!FUNC8(class))
            {
                DWORD len = FUNC13( CP_ACP, 0, info.className, -1, NULL, 0, NULL, NULL );
                class = FUNC6( FUNC4(), 0, len );
                if (class != NULL)
                    FUNC13( CP_ACP, 0, info.className, -1, class, len, NULL, NULL );
            }
            if (!FUNC8(caption))
            {
                DWORD len = FUNC13( CP_ACP, 0, info.windowName, -1, NULL, 0, NULL, NULL );
                caption = FUNC6( FUNC4(), 0, len );
                if (caption != NULL)
                    FUNC13( CP_ACP, 0, info.windowName, -1, caption, len, NULL, NULL );
            }

            if (class != NULL && caption != NULL)
            {
                hwndCtrl = FUNC0( info.exStyle | WS_EX_NOPARENTNOTIFY,
                                            class, caption, info.style | WS_CHILD,
                                            FUNC9(info.x, dlgInfo->xBaseUnit, 4),
                                            FUNC9(info.y, dlgInfo->yBaseUnit, 8),
                                            FUNC9(info.cx, dlgInfo->xBaseUnit, 4),
                                            FUNC9(info.cy, dlgInfo->yBaseUnit, 8),
                                            hwnd, (HMENU)(ULONG_PTR)info.id,
                                            hInst, (LPVOID)info.data );
            }
            else
                hwndCtrl = NULL;
            if (!FUNC8(class)) FUNC7( FUNC4(), 0, class );
            if (!FUNC8(caption)) FUNC7( FUNC4(), 0, caption );
        }

        if (info.windowNameFree)
        {
            FUNC7( FUNC4(), 0, (LPVOID)info.windowName );
        }

        if (!hwndCtrl)
        {
            FUNC12("control %s %s creation failed\n", FUNC14(info.className),
                  FUNC14(info.windowName));
            if (dlgTemplate->style & DS_NOFAILCREATE) continue;
            return FALSE;
        }

        /* Send initialisation messages to the control */
        if (dlgInfo->hUserFont) FUNC10( hwndCtrl, WM_SETFONT,
                                             (WPARAM)dlgInfo->hUserFont, 0 );
        if (FUNC10(hwndCtrl, WM_GETDLGCODE, 0, 0) & DLGC_DEFPUSHBUTTON)
        {
            /* If there's already a default push-button, set it back */
            /* to normal and use this one instead. */
            if (hwndDefButton)
                FUNC10( hwndDefButton, BM_SETSTYLE, BS_PUSHBUTTON, FALSE );
            hwndDefButton = hwndCtrl;
            dlgInfo->idResult = FUNC5( hwndCtrl, GWLP_ID );
        }
    }
    FUNC11(" END\n" );
    return TRUE;
}