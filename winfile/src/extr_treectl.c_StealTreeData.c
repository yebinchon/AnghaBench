
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ nLevels; struct TYPE_3__* pParent; int szName; } ;
typedef TYPE_1__* PDNODE ;
typedef int LPWSTR ;
typedef long LPARAM ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef int DWORD ;
typedef int DNODE ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 int ASSERT (int) ;
 int ATTR_HS ;
 scalar_t__ ByteCountOf (int ) ;
 scalar_t__ COUNTOF (int *) ;
 int FALSE ;
 int FS_GETDIRECTORY ;
 TYPE_1__* FindParent (scalar_t__,scalar_t__,scalar_t__) ;
 int GWL_ATTRIBS ;
 int GWL_READLEVEL ;
 int GWL_VIEW ;
 int GW_CHILD ;
 int GW_HWNDNEXT ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 scalar_t__ GetParent (scalar_t__) ;
 scalar_t__ GetWindow (scalar_t__,int ) ;
 int GetWindowLongPtr (scalar_t__,int ) ;
 scalar_t__ HasTreeWindow (scalar_t__) ;
 int IDCW_TREELISTBOX ;
 scalar_t__ LB_ERR ;
 int LB_GETCOUNT ;
 int LB_GETITEMDATA ;
 int LB_GETTEXT ;
 int LB_INSERTSTRING ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int MAXPATHLEN ;
 int ResetTreeMax (scalar_t__,int ) ;
 scalar_t__ SendMessage (scalar_t__,int ,scalar_t__,long) ;
 int StripBackslash (int *) ;
 int TRUE ;
 int VIEW_PLUSES ;
 scalar_t__ hwndMDIClient ;
 int lstrcmpi (int ,int *) ;
 int lstrcpy (int ,int ) ;
 int lstrlen (int ) ;

BOOL
StealTreeData(
   HWND hwndTC,
   HWND hwndLB,
   LPWSTR szDir)
{
   HWND hwndSrc, hwndT;
   WCHAR szSrc[MAXPATHLEN];
   DWORD dwView;
   DWORD dwAttribs;




   dwView = GetWindowLongPtr(GetParent(hwndTC), GWL_VIEW) & VIEW_PLUSES;
   dwAttribs = GetWindowLongPtr(GetParent(hwndTC), GWL_ATTRIBS) & ATTR_HS;




   for (hwndSrc = GetWindow(hwndMDIClient, GW_CHILD); hwndSrc;
      hwndSrc = GetWindow(hwndSrc, GW_HWNDNEXT)) {





      if ((hwndT = HasTreeWindow(hwndSrc)) &&
         (hwndT != hwndTC) &&
         !GetWindowLongPtr(hwndT, GWL_READLEVEL) &&
         (dwView == (DWORD)(GetWindowLongPtr(hwndSrc, GWL_VIEW) & VIEW_PLUSES)) &&
         (dwAttribs == (DWORD)(GetWindowLongPtr(hwndSrc, GWL_ATTRIBS) & ATTR_HS))) {

         SendMessage(hwndSrc, FS_GETDIRECTORY, COUNTOF(szSrc), (LPARAM)szSrc);
         StripBackslash(szSrc);

         if (!lstrcmpi(szDir, szSrc))
            break;
      }
   }

   if (hwndSrc) {

      HWND hwndLBSrc;
      PDNODE pNode, pNewNode, pLastParent;
      INT i;

      hwndLBSrc = GetDlgItem(hwndT, IDCW_TREELISTBOX);




      if ((INT)SendMessage(hwndLBSrc, LB_GETCOUNT, 0, 0L) == 0) {
         return FALSE;
      }

      pLastParent = ((void*)0);

      for (i = 0; SendMessage(hwndLBSrc, LB_GETTEXT, i, (LPARAM)&pNode) != LB_ERR; i++) {

         if (pNewNode = (PDNODE)LocalAlloc(LPTR, sizeof(DNODE) + ByteCountOf(lstrlen(pNode->szName)))) {

            *pNewNode = *pNode;
            lstrcpy(pNewNode->szName, pNode->szName);





            if (pLastParent && pLastParent->nLevels == (BYTE)(pNode->nLevels - (BYTE)1)) {
               pNewNode->pParent = pLastParent;
            } else {
               pNewNode->pParent = pLastParent = FindParent(pNode->nLevels-1, i-1, hwndLB);
            }

            SendMessage(hwndLB, LB_INSERTSTRING, i, (LPARAM)pNewNode);
            ASSERT((PDNODE)SendMessage(hwndLB, LB_GETITEMDATA, i, 0L) == pNewNode);
         }
      }




      ResetTreeMax(hwndLB, FALSE);

      return TRUE;
   }

   return FALSE;
}
