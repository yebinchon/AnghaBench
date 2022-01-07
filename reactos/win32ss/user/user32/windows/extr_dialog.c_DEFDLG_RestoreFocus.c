
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int * hwndFocus; } ;
typedef int * HWND ;
typedef TYPE_1__ DIALOGINFO ;
typedef scalar_t__ BOOL ;


 int DEFDLG_SetFocus (int *) ;
 int DF_END ;
 int FALSE ;
 TYPE_1__* GETDLGINFO (int *) ;
 int * GetNextDlgGroupItem (int *,int ,int ) ;
 int * GetNextDlgTabItem (int *,int ,int ) ;
 scalar_t__ IsIconic (int *) ;
 int IsWindow (int *) ;
 int SetFocus (int *) ;

__attribute__((used)) static void DEFDLG_RestoreFocus( HWND hwnd, BOOL justActivate )
{
    DIALOGINFO *infoPtr;

    if (IsIconic( hwnd )) return;
    if (!(infoPtr = GETDLGINFO(hwnd))) return;

    if (infoPtr->flags & DF_END) return;
    if (!IsWindow(infoPtr->hwndFocus) || infoPtr->hwndFocus == hwnd) {
        if (justActivate) return;


        infoPtr->hwndFocus = GetNextDlgTabItem( hwnd, 0, FALSE );


        if (!infoPtr->hwndFocus) infoPtr->hwndFocus = GetNextDlgGroupItem( hwnd, 0, FALSE );
        if (!IsWindow( infoPtr->hwndFocus )) return;
    }
    if (justActivate)
        SetFocus( infoPtr->hwndFocus );
    else
        DEFDLG_SetFocus( infoPtr->hwndFocus );

    infoPtr->hwndFocus = ((void*)0);
}
