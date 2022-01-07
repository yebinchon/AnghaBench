
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cxy; int mask; } ;
struct TYPE_4__ {int* widths; int hwndHeader; int hwnd; } ;
typedef TYPE_1__ Pane ;
typedef int LPARAM ;
typedef TYPE_2__ HDITEMW ;


 int COLUMNS ;
 int GetScrollPos (int ,int ) ;
 int HDI_WIDTH ;
 int HDM_SETITEMW ;
 int SB_HORZ ;
 int SendMessageW (int ,int ,int,int ) ;

__attribute__((used)) static void set_header(Pane* pane)
{
 HDITEMW item;
 int scroll_pos = GetScrollPos(pane->hwnd, SB_HORZ);
 int i=0, x=0;

 item.mask = HDI_WIDTH;
 item.cxy = 0;

 for(; (i < COLUMNS) && (x+pane->widths[i] < scroll_pos); i++) {
  x += pane->widths[i];
  SendMessageW(pane->hwndHeader, HDM_SETITEMW, i, (LPARAM)&item);
 }

 if (i < COLUMNS) {
  x += pane->widths[i];
  item.cxy = x - scroll_pos;
  SendMessageW(pane->hwndHeader, HDM_SETITEMW, i++, (LPARAM)&item);

  for(; i < COLUMNS; i++) {
   item.cxy = pane->widths[i];
   x += pane->widths[i];
   SendMessageW(pane->hwndHeader, HDM_SETITEMW, i, (LPARAM)&item);
  }
 }
}
