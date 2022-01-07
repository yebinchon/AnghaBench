
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hwndFocus; } ;
typedef scalar_t__ HWND ;
typedef TYPE_1__ DIALOGINFO ;


 TYPE_1__* GETDLGINFO (scalar_t__) ;
 scalar_t__ GetFocus () ;
 int IsChild (scalar_t__,scalar_t__) ;

__attribute__((used)) static void DEFDLG_SaveFocus( HWND hwnd )
{
    DIALOGINFO *infoPtr;
    HWND hwndFocus = GetFocus();

    if (!hwndFocus || !IsChild( hwnd, hwndFocus )) return;
    if (!(infoPtr = GETDLGINFO(hwnd))) return;
    infoPtr->hwndFocus = hwndFocus;

}
