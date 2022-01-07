
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_11__ {int y; int x; int x_root; int y_root; int button; int time; } ;
struct TYPE_10__ {scalar_t__ window; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_3__ xbutton; TYPE_2__ xmotion; } ;
typedef TYPE_4__ XEvent ;
struct TYPE_9__ {int move_x_offset; int move_y_offset; scalar_t__ moving_wnd; int using_full_workarea; } ;
struct TYPE_13__ {int win_button_size; int width; scalar_t__ wnd; TYPE_1__ xwin; scalar_t__ hide_decorations; int fullscreen; int display; int last_gesturetime; } ;
typedef TYPE_5__ RDPCLIENT ;
typedef scalar_t__ BOOL ;


 scalar_t__ ButtonPress ;
 scalar_t__ ButtonRelease ;
 int DefaultScreen (int ) ;
 scalar_t__ False ;
 int MOUSE_FLAG_DOWN ;
 int RDP_INPUT_MOUSE ;
 scalar_t__ True ;
 int XIconifyWindow (int ,scalar_t__,int ) ;
 int rdp_send_input (TYPE_5__*,int ,int ,int,int,int) ;
 int time (int *) ;
 int xkeymap_translate_button (int ) ;

__attribute__((used)) static void
handle_button_event(RDPCLIENT * This, XEvent xevent, BOOL down)
{
 uint16 button, flags = 0;
 This->last_gesturetime = xevent.xbutton.time;
 button = xkeymap_translate_button(xevent.xbutton.button);
 if (button == 0)
  return;

 if (down)
  flags = MOUSE_FLAG_DOWN;


 if (This->xwin.moving_wnd && (xevent.type == ButtonRelease))
  This->xwin.moving_wnd = False;


 if (xevent.xbutton.y < This->win_button_size)
 {

  if (xevent.xbutton.x >= This->width - This->win_button_size)
  {

   ;
  }
  else if (xevent.xbutton.x >= This->width - This->win_button_size * 2)
  {




   if (xevent.type == ButtonPress)
    return;
  }
  else if (xevent.xbutton.x >= This->width - This->win_button_size * 3)
  {

   if (xevent.type == ButtonRelease)
   {


    rdp_send_input(This, time(((void*)0)), RDP_INPUT_MOUSE, button, 1, 1);
    XIconifyWindow(This->display, This->wnd, DefaultScreen(This->display));
    return;
   }
  }
  else if (xevent.xbutton.x <= This->win_button_size)
  {

   if (xevent.type == ButtonPress)
    return;
  }
  else
  {

   if (xevent.type == ButtonPress)
   {
    if (!This->fullscreen && This->hide_decorations && !This->xwin.using_full_workarea)
    {
     This->xwin.moving_wnd = True;
     This->xwin.move_x_offset = xevent.xbutton.x;
     This->xwin.move_y_offset = xevent.xbutton.y;
    }
    return;
   }
  }
 }

 if (xevent.xmotion.window == This->wnd)
 {
  rdp_send_input(This, time(((void*)0)), RDP_INPUT_MOUSE,
          flags | button, xevent.xbutton.x, xevent.xbutton.y);
 }
 else
 {

  rdp_send_input(This, time(((void*)0)), RDP_INPUT_MOUSE,
          flags | button, xevent.xbutton.x_root, xevent.xbutton.y_root);
 }
}
