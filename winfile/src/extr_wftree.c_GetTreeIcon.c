
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;
typedef int HICON ;


 scalar_t__ HasDirWindow (scalar_t__) ;
 scalar_t__ HasTreeWindow (scalar_t__) ;
 int hicoDir ;
 int hicoTree ;
 int hicoTreeDir ;

HICON
GetTreeIcon(HWND hWnd)
{
   HWND hwndTree, hwndDir;

   hwndTree = HasTreeWindow(hWnd);
   hwndDir = HasDirWindow(hWnd);

   if (hwndTree && hwndDir)
      return hicoTreeDir;
   else if (hwndTree)
      return hicoTree;
   else
      return hicoDir;
}
