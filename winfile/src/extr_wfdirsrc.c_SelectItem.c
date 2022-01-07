
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WPARAM ;
typedef int VOID ;
typedef int HWND ;
typedef long DWORD ;
typedef scalar_t__ BOOL ;


 int LB_SETANCHORINDEX ;
 int LB_SETCARETINDEX ;
 int LB_SETSEL ;
 long MAKELONG (int ,int ) ;
 int SendMessage (int ,int ,scalar_t__,long) ;
 int TRUE ;

VOID
SelectItem(HWND hwndLB, WPARAM wParam, BOOL bSel)
{



   SendMessage(hwndLB, LB_SETSEL, bSel, (DWORD)wParam);




   SendMessage(hwndLB, LB_SETCARETINDEX, wParam, MAKELONG(TRUE,0));
   SendMessage(hwndLB, LB_SETANCHORINDEX, wParam, 0L);
}
