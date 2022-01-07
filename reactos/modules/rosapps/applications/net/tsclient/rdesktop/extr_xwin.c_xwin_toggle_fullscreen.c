
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gc; int current_cursor; int depth; scalar_t__ seamless_active; } ;
struct TYPE_8__ {int fullscreen; int display; int height; int width; TYPE_1__ xwin; int wnd; int ownbackstore; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int Pixmap ;


 int XCopyArea (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int XCreatePixmap (int ,int ,int ,int ,int ) ;
 int XDefineCursor (int ,int ,int ) ;
 int XFreePixmap (int ,int ) ;
 int ui_create_window (TYPE_2__*) ;
 int ui_destroy_window (TYPE_2__*) ;
 int ui_seamless_toggle (TYPE_2__*) ;

void
xwin_toggle_fullscreen(RDPCLIENT * This)
{
 Pixmap contents = 0;

 if (This->xwin.seamless_active)

  ui_seamless_toggle(This);

 if (!This->ownbackstore)
 {

  contents = XCreatePixmap(This->display, This->wnd, This->width, This->height, This->xwin.depth);
  XCopyArea(This->display, This->wnd, contents, This->xwin.gc, 0, 0, This->width, This->height, 0, 0);
 }

 ui_destroy_window(This);
 This->fullscreen = !This->fullscreen;
 ui_create_window(This);

 XDefineCursor(This->display, This->wnd, This->xwin.current_cursor);

 if (!This->ownbackstore)
 {
  XCopyArea(This->display, contents, This->wnd, This->xwin.gc, 0, 0, This->width, This->height, 0, 0);
  XFreePixmap(This->display, contents);
 }
}
