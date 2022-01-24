#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ cy; scalar_t__ cx; } ;
struct TYPE_12__ {TYPE_4__* lpBrowseInfo; scalar_t__ hwndTreeView; int /*<<< orphan*/ * layout; TYPE_1__ szMin; int /*<<< orphan*/  hWnd; } ;
typedef  TYPE_2__ browse_info ;
struct TYPE_14__ {int ulFlags; scalar_t__ lpszTitle; } ;
struct TYPE_13__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__* LPBROWSEINFOW ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BFFM_INITIALIZED ; 
 int BIF_EDITBOX ; 
 int BIF_NEWDIALOGSTYLE ; 
 int BIF_NONEWFOLDERBUTTON ; 
 int BIF_STATUSTEXT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  HWND_TOP ; 
 int /*<<< orphan*/  IDC_BROWSE_FOR_FOLDER_FOLDER ; 
 int /*<<< orphan*/  IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT ; 
 int /*<<< orphan*/  IDC_BROWSE_FOR_FOLDER_NEW_FOLDER ; 
 int /*<<< orphan*/  IDC_BROWSE_FOR_FOLDER_STATUS ; 
 int /*<<< orphan*/  IDC_BROWSE_FOR_FOLDER_TITLE ; 
 int /*<<< orphan*/  IDC_BROWSE_FOR_FOLDER_TREEVIEW ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  LAYOUT_INFO_COUNT ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SUPPORTEDFLAGS ; 
 int /*<<< orphan*/  SWP_NOMOVE ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_layout_info ; 
 int /*<<< orphan*/  szBrowseFolderInfo ; 

__attribute__((used)) static BOOL FUNC12( HWND hWnd, browse_info *info )
{
    LPBROWSEINFOW lpBrowseInfo = info->lpBrowseInfo;

    info->hWnd = hWnd;
    FUNC7( hWnd, szBrowseFolderInfo, info );

    if (lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE)
        FUNC1("flags BIF_NEWDIALOGSTYLE partially implemented\n");
    if (lpBrowseInfo->ulFlags & ~SUPPORTEDFLAGS)
	FUNC1("flags %x not implemented\n", lpBrowseInfo->ulFlags & ~SUPPORTEDFLAGS);

    if (lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE)
    {
        RECT rcWnd;

        info->layout = FUNC6(hWnd, g_layout_info, LAYOUT_INFO_COUNT);

        /* TODO: Windows allows shrinking the windows a bit */
        FUNC4(hWnd, &rcWnd);
        info->szMin.cx = rcWnd.right - rcWnd.left;
        info->szMin.cy = rcWnd.bottom - rcWnd.top;
    }
    else
    {
        info->layout = NULL;
    }

    if (lpBrowseInfo->lpszTitle)
	FUNC9( FUNC3(hWnd, IDC_BROWSE_FOR_FOLDER_TITLE), lpBrowseInfo->lpszTitle );
    else
	FUNC10( FUNC3(hWnd, IDC_BROWSE_FOR_FOLDER_TITLE), SW_HIDE );

    if (!(lpBrowseInfo->ulFlags & BIF_STATUSTEXT)
        || (lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE))
	FUNC10( FUNC3(hWnd, IDC_BROWSE_FOR_FOLDER_STATUS), SW_HIDE );

    /* Hide "Make New Folder" Button? */
    if ((lpBrowseInfo->ulFlags & BIF_NONEWFOLDERBUTTON)
        || !(lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE))
        FUNC10( FUNC3(hWnd, IDC_BROWSE_FOR_FOLDER_NEW_FOLDER), SW_HIDE );

    /* Hide the editbox? */
    if (!(lpBrowseInfo->ulFlags & BIF_EDITBOX))
    {
        FUNC10( FUNC3(hWnd, IDC_BROWSE_FOR_FOLDER_FOLDER), SW_HIDE );
        FUNC10( FUNC3(hWnd, IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT), SW_HIDE );
    }

    info->hwndTreeView = FUNC3( hWnd, IDC_BROWSE_FOR_FOLDER_TREEVIEW );
    if (info->hwndTreeView)
    {
        FUNC5( info );

        /* Resize the treeview if there's not editbox */
        if ((lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE)
            && !(lpBrowseInfo->ulFlags & BIF_EDITBOX))
        {
            RECT rc;
            FUNC2(info->hwndTreeView, &rc);
            FUNC8(info->hwndTreeView, HWND_TOP, 0, 0,
                         rc.right, rc.bottom + 40, SWP_NOMOVE);
        }
    }
    else
        FUNC0("treeview control missing!\n");

    FUNC11( info->lpBrowseInfo, hWnd, BFFM_INITIALIZED, 0 );

    return TRUE;
}