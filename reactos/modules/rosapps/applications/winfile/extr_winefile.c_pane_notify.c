
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {int cxy; int mask; } ;
struct TYPE_19__ {int iItem; TYPE_1__* pitem; } ;
struct TYPE_18__ {int code; } ;
struct TYPE_17__ {int* widths; int* positions; int hwnd; int hwndHeader; } ;
struct TYPE_16__ {int right; int left; int bottom; int top; } ;
struct TYPE_15__ {int cxy; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ Pane ;
typedef TYPE_4__ NMHDR ;
typedef int LRESULT ;
typedef TYPE_5__* LPNMHEADERW ;
typedef int LPARAM ;
typedef TYPE_6__ HDITEMW ;


 int COLUMNS ;
 int FALSE ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetScrollPos (int ,int ) ;
 int HDI_WIDTH ;
 int HDM_SETITEMW ;

 int HDN_ENDTRACKW ;

 int InvalidateRect (int ,int ,int ) ;
 int LB_SETHORIZONTALEXTENT ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,TYPE_2__*,int ,int) ;
 int SB_HORZ ;
 int SW_INVALIDATE ;
 int ScrollWindowEx (int ,int,int ,TYPE_2__*,TYPE_2__*,int ,int ,int ) ;
 int SendMessageW (int ,int ,size_t,int ) ;
 int TRUE ;
 int calc_single_width (TYPE_3__*,int) ;
 int set_header (TYPE_3__*) ;

__attribute__((used)) static LRESULT pane_notify(Pane* pane, NMHDR* pnmh)
{
 switch(pnmh->code) {
  case 128: {
   LPNMHEADERW phdn = (LPNMHEADERW)pnmh;
   int idx = phdn->iItem;
   int dx = phdn->pitem->cxy - pane->widths[idx];
   int i;

   RECT clnt;
   GetClientRect(pane->hwnd, &clnt);

   pane->widths[idx] += dx;

   for(i=idx; ++i<=COLUMNS; )
    pane->positions[i] += dx;

   {
    int scroll_pos = GetScrollPos(pane->hwnd, SB_HORZ);
    RECT rt_scr;
    RECT rt_clip;

    rt_scr.left = pane->positions[idx+1]-scroll_pos;
    rt_scr.top = 0;
    rt_scr.right = clnt.right;
    rt_scr.bottom = clnt.bottom;

    rt_clip.left = pane->positions[idx]-scroll_pos;
    rt_clip.top = 0;
    rt_clip.right = clnt.right;
    rt_clip.bottom = clnt.bottom;

    if (rt_scr.left < 0) rt_scr.left = 0;
    if (rt_clip.left < 0) rt_clip.left = 0;

    ScrollWindowEx(pane->hwnd, dx, 0, &rt_scr, &rt_clip, 0, 0, SW_INVALIDATE);

    rt_clip.right = pane->positions[idx+1];
    RedrawWindow(pane->hwnd, &rt_clip, 0, RDW_INVALIDATE|RDW_UPDATENOW);

    if (pnmh->code == HDN_ENDTRACKW) {
     SendMessageW(pane->hwnd, LB_SETHORIZONTALEXTENT, pane->positions[COLUMNS], 0);

     if (GetScrollPos(pane->hwnd, SB_HORZ) != scroll_pos)
      set_header(pane);
    }
   }

   return FALSE;
  }

  case 129: {
   LPNMHEADERW phdn = (LPNMHEADERW)pnmh;
   HDITEMW item;

   calc_single_width(pane, phdn->iItem);
   item.mask = HDI_WIDTH;
   item.cxy = pane->widths[phdn->iItem];

   SendMessageW(pane->hwndHeader, HDM_SETITEMW, phdn->iItem, (LPARAM)&item);
   InvalidateRect(pane->hwnd, 0, TRUE);
   break;}
 }

 return 0;
}
