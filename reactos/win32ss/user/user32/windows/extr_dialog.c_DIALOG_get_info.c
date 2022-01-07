
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int idResult; } ;
struct TYPE_8__ {scalar_t__ cbwndExtra; int state; } ;
typedef TYPE_1__* PWND ;
typedef int HWND ;
typedef TYPE_2__ DIALOGINFO ;
typedef scalar_t__ BOOL ;


 scalar_t__ DLGWINDOWEXTRA ;
 int DWLP_ROS_DIALOGINFO ;
 int GetProcessHeap () ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IDOK ;
 int NtUserxSetDialogPointer (int ,TYPE_2__*) ;
 int SETDLGINFO (int ,TYPE_2__*) ;
 TYPE_1__* ValidateHwnd (int ) ;
 int WNDS_DIALOGWINDOW ;

DIALOGINFO *DIALOG_get_info( HWND hWnd, BOOL create )
{
    PWND pWindow;
    DIALOGINFO* dlgInfo;

    pWindow = ValidateHwnd( hWnd );
    if (!pWindow)
    {
       return ((void*)0);
    }

    dlgInfo = (DIALOGINFO *)GetWindowLongPtrW( hWnd, DWLP_ROS_DIALOGINFO );

    if (!dlgInfo && create)
    {
        if (pWindow && pWindow->cbwndExtra >= DLGWINDOWEXTRA)
        {
            if (!(dlgInfo = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*dlgInfo) )))
                return ((void*)0);

            dlgInfo->idResult = IDOK;
            SETDLGINFO( hWnd, dlgInfo );
       }
       else
       {
           return ((void*)0);
       }
    }

    if (dlgInfo)
    {
        if (!(pWindow->state & WNDS_DIALOGWINDOW))
        {
           NtUserxSetDialogPointer( hWnd, dlgInfo );
        }
    }
    return dlgInfo;
}
