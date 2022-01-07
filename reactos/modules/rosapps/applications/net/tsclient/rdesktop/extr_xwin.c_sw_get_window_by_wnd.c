
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ wnd; struct TYPE_7__* next; } ;
typedef TYPE_2__ seamless_window ;
typedef scalar_t__ Window ;
struct TYPE_6__ {TYPE_2__* seamless_windows; } ;
struct TYPE_8__ {TYPE_1__ xwin; } ;
typedef TYPE_3__ RDPCLIENT ;



__attribute__((used)) static seamless_window *
sw_get_window_by_wnd(RDPCLIENT * This, Window wnd)
{
 seamless_window *sw;
 for (sw = This->xwin.seamless_windows; sw; sw = sw->next)
 {
  if (sw->wnd == wnd)
   return sw;
 }
 return ((void*)0);
}
