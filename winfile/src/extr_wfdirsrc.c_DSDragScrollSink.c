
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_10__ {TYPE_1__ ptDrop; int * hwndSink; int * hwndSource; } ;
struct TYPE_9__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_8__ {scalar_t__ left; scalar_t__ top; scalar_t__ bottom; int right; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ POINT ;
typedef int LPPOINT ;
typedef TYPE_4__* LPDROPSTRUCT ;
typedef int * HWND ;


 int ClientToScreen (int *,int ) ;
 int GetClientRect (int *,TYPE_2__*) ;
 int * GetDlgItem (int *,int ) ;
 int * GetMDIChildFromDescendant (int *) ;
 int * HasDirWindow (int *) ;
 int * HasTreeWindow (int *) ;
 int IDCW_LISTBOX ;
 int IDCW_TREELISTBOX ;
 int SB_LINEDOWN ;
 int SB_LINEUP ;
 int SendMessage (int *,int ,int ,long) ;
 int WM_VSCROLL ;

VOID
DSDragScrollSink(LPDROPSTRUCT lpds)
{
    HWND hwndMDIChildSource;
    HWND hwndMDIChildSink;

    RECT rcSink;
    RECT rcScroll;
    POINT ptDropScr;
    HWND hwndToScroll;

    hwndMDIChildSource = GetMDIChildFromDescendant(lpds->hwndSource);
    hwndMDIChildSink = GetMDIChildFromDescendant(lpds->hwndSink);


    if (lpds->hwndSink == ((void*)0))
    {
      rcSink.left = rcSink.top = 0;
    }
    else
    {
      GetClientRect(lpds->hwndSink, &rcSink);
      ClientToScreen(lpds->hwndSink, (LPPOINT)&rcSink.left);
      ClientToScreen(lpds->hwndSink, (LPPOINT)&rcSink.right);
    }

    ptDropScr.x = rcSink.left + lpds->ptDrop.x;
    ptDropScr.y = rcSink.top + lpds->ptDrop.y;




    hwndToScroll = hwndMDIChildSink;
    if (hwndToScroll == ((void*)0))
    {
      hwndToScroll = hwndMDIChildSource;
    }

    GetClientRect(hwndToScroll, &rcScroll);
    ClientToScreen(hwndToScroll, (LPPOINT)&rcScroll.left);
    ClientToScreen(hwndToScroll, (LPPOINT)&rcScroll.right);


    if (ptDropScr.y < rcScroll.top || ptDropScr.y > rcScroll.bottom)
    {

      HWND hwndTree = HasTreeWindow(hwndToScroll);
      HWND hwndDir = HasDirWindow(hwndToScroll);
      HWND hwndLB = ((void*)0);

      if (hwndDir)
      {
        hwndLB = GetDlgItem(hwndDir, IDCW_LISTBOX);
        if (hwndLB)
        {
            RECT rcLB;
            GetClientRect(hwndLB, &rcLB);
            ClientToScreen(hwndLB, (LPPOINT)&rcLB.left);


            if (ptDropScr.x < rcLB.left)
            {

                hwndLB = ((void*)0);
            }
        }
      }

      if (hwndLB == ((void*)0) && hwndTree)
      {

          hwndLB = GetDlgItem(hwndTree, IDCW_TREELISTBOX);
      }

      if (hwndLB)
      {
          SendMessage(hwndLB, WM_VSCROLL, ptDropScr.y < rcScroll.top ? SB_LINEUP : SB_LINEDOWN, 0L);
      }
    }
}
