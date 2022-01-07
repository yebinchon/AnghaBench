
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ wnd; scalar_t__ behind; scalar_t__ id; } ;
typedef TYPE_2__ seamless_window ;
typedef scalar_t__ Window ;
struct TYPE_11__ {int screen; } ;
struct TYPE_13__ {TYPE_1__ xwin; int display; } ;
typedef int Status ;
typedef TYPE_3__ RDPCLIENT ;


 int RootWindowOfScreen (int ) ;
 int XFree (scalar_t__*) ;
 int XQueryTree (int ,int ,scalar_t__*,scalar_t__*,scalar_t__**,unsigned int*) ;
 int seamless_send_zchange (TYPE_3__*,scalar_t__,scalar_t__,int ) ;
 TYPE_2__* sw_get_window_by_wnd (TYPE_3__*,scalar_t__) ;
 int sw_restack_window (TYPE_3__*,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void
sw_handle_restack(RDPCLIENT * This, seamless_window * sw)
{
 Status status;
 Window root, parent, *children;
 unsigned int nchildren, i;
 seamless_window *sw_below;

 status = XQueryTree(This->display, RootWindowOfScreen(This->xwin.screen),
       &root, &parent, &children, &nchildren);
 if (!status || !nchildren)
  return;

 sw_below = ((void*)0);

 i = 0;
 while (children[i] != sw->wnd)
 {
  i++;
  if (i >= nchildren)
   goto end;
 }

 for (i++; i < nchildren; i++)
 {
  sw_below = sw_get_window_by_wnd(This, children[i]);
  if (sw_below)
   break;
 }

 if (!sw_below && !sw->behind)
  goto end;
 if (sw_below && (sw_below->id == sw->behind))
  goto end;

 if (sw_below)
 {
  seamless_send_zchange(This, sw->id, sw_below->id, 0);
  sw_restack_window(This, sw, sw_below->id);
 }
 else
 {
  seamless_send_zchange(This, sw->id, 0, 0);
  sw_restack_window(This, sw, 0);
 }

      end:
 XFree(children);
}
