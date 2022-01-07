
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int orgWidths ;
typedef int orgPositions ;
struct TYPE_9__ {int cx; } ;
struct TYPE_13__ {int hfont; TYPE_1__ spaceSize; } ;
struct TYPE_10__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_12__ {TYPE_2__ rcItem; int hDC; int hwndItem; scalar_t__ itemState; scalar_t__ itemAction; scalar_t__ itemID; scalar_t__ CtlID; scalar_t__ CtlType; } ;
struct TYPE_11__ {int* widths; int* positions; int hwnd; } ;
typedef TYPE_3__ Pane ;
typedef int HFONT ;
typedef int HDC ;
typedef int Entry ;
typedef TYPE_4__ DRAWITEMSTRUCT ;
typedef int BOOL ;


 int COLUMNS ;
 int FALSE ;
 int GetDC (int ) ;
 TYPE_8__ Globals ;
 int IMAGE_WIDTH ;
 int InvalidateRect (int ,int ,int ) ;
 int LB_GETCOUNT ;
 int LB_GETITEMDATA ;
 int LB_SETHORIZONTALEXTENT ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRUE ;
 int draw_item (TYPE_3__*,TYPE_4__*,int *,int) ;
 int memcmp (int*,int*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static BOOL calc_widths(Pane* pane, BOOL anyway)
{
 int col, x, cx, spc=3*Globals.spaceSize.cx;
 int entries = SendMessageW(pane->hwnd, LB_GETCOUNT, 0, 0);
 int orgWidths[COLUMNS];
 int orgPositions[COLUMNS+1];
 HFONT hfontOld;
 HDC hdc;
 int cnt;

 if (!anyway) {
  memcpy(orgWidths, pane->widths, sizeof(orgWidths));
  memcpy(orgPositions, pane->positions, sizeof(orgPositions));
 }

 for(col=0; col<COLUMNS; col++)
  pane->widths[col] = 0;

 hdc = GetDC(pane->hwnd);
 hfontOld = SelectObject(hdc, Globals.hfont);

 for(cnt=0; cnt<entries; cnt++) {
  Entry* entry = (Entry*)SendMessageW(pane->hwnd, LB_GETITEMDATA, cnt, 0);

  DRAWITEMSTRUCT dis;

  dis.CtlType = 0;
  dis.CtlID = 0;
  dis.itemID = 0;
  dis.itemAction = 0;
  dis.itemState = 0;
  dis.hwndItem = pane->hwnd;
  dis.hDC = hdc;
  dis.rcItem.left = 0;
  dis.rcItem.top = 0;
  dis.rcItem.right = 0;
  dis.rcItem.bottom = 0;


  draw_item(pane, &dis, entry, COLUMNS);
 }

 SelectObject(hdc, hfontOld);
 ReleaseDC(pane->hwnd, hdc);

 x = 0;
 for(col=0; col<COLUMNS; col++) {
  pane->positions[col] = x;
  cx = pane->widths[col];

  if (cx) {
   cx += spc;

   if (cx < IMAGE_WIDTH)
    cx = IMAGE_WIDTH;

   pane->widths[col] = cx;
  }

  x += cx;
 }

 pane->positions[COLUMNS] = x;

 SendMessageW(pane->hwnd, LB_SETHORIZONTALEXTENT, x, 0);


 if (!anyway && !memcmp(orgWidths, pane->widths, sizeof(orgWidths)))
  return FALSE;


 if (!anyway && pane->widths[0]<orgWidths[0] &&
  !memcmp(orgWidths+1, pane->widths+1, sizeof(orgWidths)-sizeof(int))) {
  pane->widths[0] = orgWidths[0];
  memcpy(pane->positions, orgPositions, sizeof(orgPositions));

  return FALSE;
 }

 InvalidateRect(pane->hwnd, 0, TRUE);

 return TRUE;
}
