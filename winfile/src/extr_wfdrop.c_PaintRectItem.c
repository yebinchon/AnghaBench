
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int m_iItemSelected; int m_hWnd; } ;
typedef TYPE_1__ WF_IDropTarget ;
struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {int y; int x; } ;
typedef TYPE_2__ POINTL ;
typedef TYPE_3__ POINT ;
typedef int * HWND ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ DSRectItem (int *,int,scalar_t__,scalar_t__) ;
 scalar_t__ FALSE ;
 int * GetDlgItem (int ,int ) ;
 int IDCW_LISTBOX ;
 int IDCW_TREELISTBOX ;
 int LB_ITEMFROMPOINT ;
 int MAKELPARAM (int ,int ) ;
 scalar_t__ RectTreeItem (int *,int,scalar_t__) ;
 int ScreenToClient (int *,TYPE_3__*) ;
 int SendMessage (int *,int ,int ,int ) ;
 scalar_t__ TRUE ;

void PaintRectItem(WF_IDropTarget *This, POINTL *ppt)
{
 HWND hwndLB;
 DWORD iItem;
 POINT pt;
 BOOL fTree;


 hwndLB = GetDlgItem(This->m_hWnd, IDCW_LISTBOX);
 fTree = FALSE;
 if (hwndLB == ((void*)0))
 {
  hwndLB = GetDlgItem(This->m_hWnd, IDCW_TREELISTBOX);
  fTree = TRUE;

  if (hwndLB == ((void*)0))
   return;
 }

 if (ppt != ((void*)0))
 {
  pt.x = ppt->x;
  pt.y = ppt->y;
  ScreenToClient(hwndLB, &pt);

  iItem = SendMessage(hwndLB, LB_ITEMFROMPOINT, 0, MAKELPARAM(pt.x, pt.y));
  iItem &= 0xffff;
  if (This->m_iItemSelected != -1 && This->m_iItemSelected == iItem)
   return;
 }


 if (This->m_iItemSelected != -1)
 {
     if (fTree)
   RectTreeItem(hwndLB, This->m_iItemSelected, FALSE);
  else
   DSRectItem(hwndLB, This->m_iItemSelected, FALSE, FALSE);

  This->m_iItemSelected = (DWORD)-1;
 }


 if (ppt != ((void*)0))
 {
     if (fTree)
  {
   if (RectTreeItem(hwndLB, iItem, TRUE))
    This->m_iItemSelected = iItem;
  }
  else
  {
   if (DSRectItem(hwndLB, iItem, TRUE, FALSE))
    This->m_iItemSelected = iItem;
  }
 }
}
