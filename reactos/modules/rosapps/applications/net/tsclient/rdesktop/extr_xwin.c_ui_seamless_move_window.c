
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int xoffset; int yoffset; int width; int height; int state; int wnd; scalar_t__ outstanding_position; } ;
typedef TYPE_2__ seamless_window ;
struct TYPE_7__ {int seamless_active; } ;
struct TYPE_9__ {int display; TYPE_1__ xwin; } ;
typedef TYPE_3__ RDPCLIENT ;




 int XMoveResizeWindow (int ,int ,int,int,int,int) ;
 TYPE_2__* sw_get_window_by_id (TYPE_3__*,unsigned long) ;
 int warning (char*,unsigned long) ;

void
ui_seamless_move_window(RDPCLIENT * This, unsigned long id, int x, int y, int width, int height, unsigned long flags)
{
 seamless_window *sw;

 if (!This->xwin.seamless_active)
  return;

 sw = sw_get_window_by_id(This, id);
 if (!sw)
 {
  warning("ui_seamless_move_window: No information for window 0x%lx\n", id);
  return;
 }


 if (sw->outstanding_position)
  return;

 if (!width || !height)

  return;

 sw->xoffset = x;
 sw->yoffset = y;
 sw->width = width;
 sw->height = height;



 switch (sw->state)
 {
  case 128:
  case 129:
   return;
 }


 XMoveResizeWindow(This->display, sw->wnd, sw->xoffset, sw->yoffset, sw->width, sw->height);
}
