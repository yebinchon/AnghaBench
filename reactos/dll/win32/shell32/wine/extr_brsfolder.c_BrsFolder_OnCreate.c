
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ cy; scalar_t__ cx; } ;
struct TYPE_12__ {TYPE_4__* lpBrowseInfo; scalar_t__ hwndTreeView; int * layout; TYPE_1__ szMin; int hWnd; } ;
typedef TYPE_2__ browse_info ;
struct TYPE_14__ {int ulFlags; scalar_t__ lpszTitle; } ;
struct TYPE_13__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__* LPBROWSEINFOW ;
typedef int HWND ;
typedef int BOOL ;


 int BFFM_INITIALIZED ;
 int BIF_EDITBOX ;
 int BIF_NEWDIALOGSTYLE ;
 int BIF_NONEWFOLDERBUTTON ;
 int BIF_STATUSTEXT ;
 int ERR (char*) ;
 int FIXME (char*,...) ;
 int GetClientRect (scalar_t__,TYPE_3__*) ;
 scalar_t__ GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,TYPE_3__*) ;
 int HWND_TOP ;
 int IDC_BROWSE_FOR_FOLDER_FOLDER ;
 int IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT ;
 int IDC_BROWSE_FOR_FOLDER_NEW_FOLDER ;
 int IDC_BROWSE_FOR_FOLDER_STATUS ;
 int IDC_BROWSE_FOR_FOLDER_TITLE ;
 int IDC_BROWSE_FOR_FOLDER_TREEVIEW ;
 int InitializeTreeView (TYPE_2__*) ;
 int LAYOUT_INFO_COUNT ;
 int * LayoutInit (int ,int ,int ) ;
 int SUPPORTEDFLAGS ;
 int SWP_NOMOVE ;
 int SW_HIDE ;
 int SetPropW (int ,int ,TYPE_2__*) ;
 int SetWindowPos (scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int SetWindowTextW (scalar_t__,scalar_t__) ;
 int ShowWindow (scalar_t__,int ) ;
 int TRUE ;
 int browsefolder_callback (TYPE_4__*,int ,int ,int ) ;
 int g_layout_info ;
 int szBrowseFolderInfo ;

__attribute__((used)) static BOOL BrsFolder_OnCreate( HWND hWnd, browse_info *info )
{
    LPBROWSEINFOW lpBrowseInfo = info->lpBrowseInfo;

    info->hWnd = hWnd;
    SetPropW( hWnd, szBrowseFolderInfo, info );

    if (lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE)
        FIXME("flags BIF_NEWDIALOGSTYLE partially implemented\n");
    if (lpBrowseInfo->ulFlags & ~SUPPORTEDFLAGS)
 FIXME("flags %x not implemented\n", lpBrowseInfo->ulFlags & ~SUPPORTEDFLAGS);

    if (lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE)
    {
        RECT rcWnd;

        info->layout = LayoutInit(hWnd, g_layout_info, LAYOUT_INFO_COUNT);


        GetWindowRect(hWnd, &rcWnd);
        info->szMin.cx = rcWnd.right - rcWnd.left;
        info->szMin.cy = rcWnd.bottom - rcWnd.top;
    }
    else
    {
        info->layout = ((void*)0);
    }

    if (lpBrowseInfo->lpszTitle)
 SetWindowTextW( GetDlgItem(hWnd, IDC_BROWSE_FOR_FOLDER_TITLE), lpBrowseInfo->lpszTitle );
    else
 ShowWindow( GetDlgItem(hWnd, IDC_BROWSE_FOR_FOLDER_TITLE), SW_HIDE );

    if (!(lpBrowseInfo->ulFlags & BIF_STATUSTEXT)
        || (lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE))
 ShowWindow( GetDlgItem(hWnd, IDC_BROWSE_FOR_FOLDER_STATUS), SW_HIDE );


    if ((lpBrowseInfo->ulFlags & BIF_NONEWFOLDERBUTTON)
        || !(lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE))
        ShowWindow( GetDlgItem(hWnd, IDC_BROWSE_FOR_FOLDER_NEW_FOLDER), SW_HIDE );


    if (!(lpBrowseInfo->ulFlags & BIF_EDITBOX))
    {
        ShowWindow( GetDlgItem(hWnd, IDC_BROWSE_FOR_FOLDER_FOLDER), SW_HIDE );
        ShowWindow( GetDlgItem(hWnd, IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT), SW_HIDE );
    }

    info->hwndTreeView = GetDlgItem( hWnd, IDC_BROWSE_FOR_FOLDER_TREEVIEW );
    if (info->hwndTreeView)
    {
        InitializeTreeView( info );


        if ((lpBrowseInfo->ulFlags & BIF_NEWDIALOGSTYLE)
            && !(lpBrowseInfo->ulFlags & BIF_EDITBOX))
        {
            RECT rc;
            GetClientRect(info->hwndTreeView, &rc);
            SetWindowPos(info->hwndTreeView, HWND_TOP, 0, 0,
                         rc.right, rc.bottom + 40, SWP_NOMOVE);
        }
    }
    else
        ERR("treeview control missing!\n");

    browsefolder_callback( info->lpBrowseInfo, hWnd, BFFM_INITIALIZED, 0 );

    return TRUE;
}
