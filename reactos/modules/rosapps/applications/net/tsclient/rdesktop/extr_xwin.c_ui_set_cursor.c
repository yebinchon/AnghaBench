
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int wnd; } ;
struct TYPE_5__ {scalar_t__ current_cursor; } ;
struct TYPE_6__ {TYPE_1__ xwin; int display; int wnd; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef scalar_t__ HCURSOR ;
typedef scalar_t__ Cursor ;


 int ON_ALL_SEAMLESS_WINDOWS (int (*) (int ,int ,scalar_t__),int ) ;
 int XDefineCursor (int ,int ,scalar_t__) ;
 TYPE_4__* sw ;

void
ui_set_cursor(RDPCLIENT * This, HCURSOR cursor)
{
 This->xwin.current_cursor = (Cursor) cursor;
 XDefineCursor(This->display, This->wnd, This->xwin.current_cursor);
 ON_ALL_SEAMLESS_WINDOWS(XDefineCursor, (This->display, sw->wnd, This->xwin.current_cursor));
}
