
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int height; int width; int y; int x; } ;
typedef TYPE_1__ XGraphicsExposeEvent ;
typedef int XEvent ;
struct TYPE_4__ {scalar_t__ visibility; int dpy; } ;


 int False ;
 int GraphicsExpose ;
 int NoExpose ;
 scalar_t__ VisibilityPartiallyObscured ;
 scalar_t__ XCheckTypedEvent (int ,int ,int *) ;
 int XFlush (int ) ;
 int XSync (int ,int ) ;
 TYPE_2__ gui ;
 int gui_redraw (int ,int ,int ,int ) ;

__attribute__((used)) static void
gui_x11_check_copy_area()
{
    XEvent event;
    XGraphicsExposeEvent *gevent;

    if (gui.visibility != VisibilityPartiallyObscured)
 return;

    XFlush(gui.dpy);


    for (;;)
    {
 if (XCheckTypedEvent(gui.dpy, NoExpose, &event))
     return;

 if (XCheckTypedEvent(gui.dpy, GraphicsExpose, &event))
 {
     gevent = (XGraphicsExposeEvent *)&event;
     gui_redraw(gevent->x, gevent->y, gevent->width, gevent->height);
     if (gevent->count == 0)
  return;
 }
 XSync(gui.dpy, False);
    }
}
