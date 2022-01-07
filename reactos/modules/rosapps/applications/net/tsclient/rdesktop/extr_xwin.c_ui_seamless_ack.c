
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int outpos_serial; int height; int width; int yoffset; int xoffset; int wnd; scalar_t__ outstanding_position; int outpos_height; int outpos_width; int outpos_yoffset; int outpos_xoffset; struct TYPE_6__* next; } ;
typedef TYPE_2__ seamless_window ;
struct TYPE_5__ {int gc; int backstore; TYPE_2__* seamless_windows; } ;
struct TYPE_7__ {TYPE_1__ xwin; int display; } ;
typedef TYPE_3__ RDPCLIENT ;


 scalar_t__ False ;
 int XCopyArea (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void
ui_seamless_ack(RDPCLIENT * This, unsigned int serial)
{
 seamless_window *sw;
 for (sw = This->xwin.seamless_windows; sw; sw = sw->next)
 {
  if (sw->outstanding_position && (sw->outpos_serial == serial))
  {
   sw->xoffset = sw->outpos_xoffset;
   sw->yoffset = sw->outpos_yoffset;
   sw->width = sw->outpos_width;
   sw->height = sw->outpos_height;
   sw->outstanding_position = False;




   XCopyArea(This->display, This->xwin.backstore,
      sw->wnd, This->xwin.gc,
      sw->xoffset, sw->yoffset, sw->width, sw->height, 0, 0);

   break;
  }
 }
}
