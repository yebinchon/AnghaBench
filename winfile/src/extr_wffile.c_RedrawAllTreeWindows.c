
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int dwAttribs; } ;
typedef int TCHAR ;
typedef TYPE_1__* PDNODE ;
typedef long LPARAM ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef int DWORD ;


 int FALSE ;
 int GW_CHILD ;
 int GW_HWNDNEXT ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int GetFileAttributes (int *) ;
 int GetTreePath (TYPE_1__*,int *) ;
 scalar_t__ GetWindow (scalar_t__,int ) ;
 scalar_t__ HasTreeWindow (scalar_t__) ;
 int IDCW_TREELISTBOX ;
 int INVALID_FILE_ATTRIBUTES ;
 int InvalidateRect (scalar_t__,int *,int ) ;
 int LB_GETCOUNT ;
 int LB_GETTEXT ;
 int MAXPATHLEN ;
 scalar_t__ SendMessage (scalar_t__,int ,int,long) ;
 scalar_t__ hwndMDIClient ;

VOID RedrawAllTreeWindows()
{
    HWND hwnd, hwndTree, hwndLB;
    int cItems, ctr;
    PDNODE pNode;
    DWORD dwAttribs;
    TCHAR szPathName[MAXPATHLEN * 2];


    for (hwnd = GetWindow(hwndMDIClient, GW_CHILD);
         hwnd;
         hwnd = GetWindow(hwnd, GW_HWNDNEXT))
    {
       if (hwndTree = HasTreeWindow(hwnd))
       {
           hwndLB = GetDlgItem(hwndTree, IDCW_TREELISTBOX);





           cItems = (INT)SendMessage(hwndLB, LB_GETCOUNT, 0, 0L);
           for (ctr = 0; ctr < cItems; ctr++)
           {
               SendMessage(hwndLB, LB_GETTEXT, ctr, (LPARAM)&pNode);




               GetTreePath(pNode, szPathName);
               if ((dwAttribs = GetFileAttributes(szPathName)) != INVALID_FILE_ATTRIBUTES)
               {
                   pNode->dwAttribs = dwAttribs;
               }
           }

           InvalidateRect(hwndLB, ((void*)0), FALSE);
       }
    }
}
