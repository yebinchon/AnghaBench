
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ PDNODE ;
typedef long LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int HANDLE ;


 int GWL_XTREEMAX ;
 int GetParent (int ) ;
 int LB_GETCOUNT ;
 int LB_GETTEXT ;
 int LB_RESETCONTENT ;
 int LocalFree (int ) ;
 scalar_t__ SendMessage (int ,int ,scalar_t__,long) ;
 int SetWindowLongPtr (int ,int ,int ) ;

VOID
FreeAllTreeData(HWND hwndLB)
{
  INT nIndex;
  PDNODE pNode;



  nIndex = (INT)SendMessage(hwndLB, LB_GETCOUNT, 0, 0L) - 1;
  while (nIndex >= 0)
  {
      SendMessage(hwndLB, LB_GETTEXT, nIndex, (LPARAM)&pNode);
      LocalFree((HANDLE)pNode);
      nIndex--;
  }

  SendMessage(hwndLB, LB_RESETCONTENT, 0, 0L);
  SetWindowLongPtr(GetParent(hwndLB), GWL_XTREEMAX, 0);
}
