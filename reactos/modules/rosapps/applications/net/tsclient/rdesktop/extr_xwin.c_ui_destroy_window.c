
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * IC; } ;
struct TYPE_5__ {int wnd; int display; TYPE_1__ xwin; } ;
typedef TYPE_2__ RDPCLIENT ;


 int XDestroyIC (int *) ;
 int XDestroyWindow (int ,int ) ;

void
ui_destroy_window(RDPCLIENT * This)
{
 if (This->xwin.IC != ((void*)0))
  XDestroyIC(This->xwin.IC);

 XDestroyWindow(This->display, This->wnd);
}
