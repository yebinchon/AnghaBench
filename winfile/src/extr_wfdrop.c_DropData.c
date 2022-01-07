
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_iItemSelected; int * m_hWnd; } ;
typedef TYPE_1__ WF_IDropTarget ;
typedef int WCHAR ;
typedef int PDNODE ;
typedef int LPXDTA ;
typedef int * LPWSTR ;
typedef scalar_t__ LPTSTR ;
typedef int LPARAM ;
typedef int IDataObject ;
typedef int * HWND ;
typedef int HLOCAL ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int AddBackslash (int *) ;
 int COUNTOF (int *) ;
 int CheckEsc (int *) ;
 int DMMoveCopyHelper (int *,int *,int) ;
 scalar_t__ DROPEFFECT_COPY ;
 scalar_t__ DROPEFFECT_MOVE ;
 scalar_t__ FALSE ;
 int FS_GETDIRECTORY ;
 int * GetDlgItem (int *,int ) ;
 int GetTreePath (int ,int *) ;
 int IDCW_LISTBOX ;
 int IDCW_TREELISTBOX ;
 scalar_t__ LB_ERR ;
 int LB_GETTEXT ;
 int LocalFree (int ) ;
 int MAXPATHLEN ;
 int MemGetFileName (int ) ;
 int * QuotedContentList (int *) ;
 int * QuotedDropList (int *) ;
 scalar_t__ SendMessage (int *,int ,int,int ) ;
 int SetFocus (int *) ;
 scalar_t__ TRUE ;
 int lstrcat (int *,int ) ;
 int szStarDotStar ;

void DropData(WF_IDropTarget *This, IDataObject *pDataObject, DWORD dwEffect)
{

 HWND hwndLB;
 BOOL fTree;
 LPWSTR szFiles = ((void*)0);
 WCHAR szDest[MAXPATHLEN];

 hwndLB = GetDlgItem(This->m_hWnd, IDCW_LISTBOX);
 fTree = FALSE;
 if (hwndLB == ((void*)0))
 {
  hwndLB = GetDlgItem(This->m_hWnd, IDCW_TREELISTBOX);
  fTree = TRUE;

  if (hwndLB == ((void*)0))
   return;
 }


 if (fTree)
 {
     PDNODE pNode;


  if (This->m_iItemSelected == -1)
   return;

  if (SendMessage(hwndLB, LB_GETTEXT, This->m_iItemSelected, (LPARAM)&pNode) == LB_ERR)
   return;

  GetTreePath(pNode, szDest);
 }
 else
 {
  LPXDTA lpxdta;

  SendMessage(This->m_hWnd, FS_GETDIRECTORY, COUNTOF(szDest), (LPARAM)szDest);

  if (This->m_iItemSelected != -1)
  {
   SendMessage(hwndLB, LB_GETTEXT, This->m_iItemSelected,
    (LPARAM)(LPTSTR)&lpxdta);

   AddBackslash(szDest);
   lstrcat(szDest, MemGetFileName(lpxdta));
  }
 }

    AddBackslash(szDest);
    lstrcat(szDest, szStarDotStar);

    CheckEsc(szDest);


 if ((szFiles = QuotedDropList(pDataObject)) == ((void*)0))
 {
  szFiles = QuotedContentList(pDataObject);
  dwEffect = DROPEFFECT_MOVE;
 }

 if (szFiles != ((void*)0))
 {
  SetFocus(This->m_hWnd);

  DMMoveCopyHelper(szFiles, szDest, dwEffect == DROPEFFECT_COPY);

  LocalFree((HLOCAL)szFiles);
 }
}
