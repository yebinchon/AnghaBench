
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * PHWND ;
typedef int HWND ;


 int GetDlgItem (int ,int ) ;
 int IDCW_DIR ;
 int IDCW_TREECONTROL ;

VOID
GetTreeWindows( HWND hwnd,
   PHWND phwndTree,
   PHWND phwndDir)
{
   if (phwndTree) {
      *phwndTree = GetDlgItem(hwnd, IDCW_TREECONTROL);
   }
   if (phwndDir) {
      *phwndDir = GetDlgItem(hwnd, IDCW_DIR);
   }
}
