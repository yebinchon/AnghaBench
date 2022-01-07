
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int acquire_time; int clipboard_atom; int primary_atom; } ;
struct TYPE_6__ {scalar_t__ wnd; TYPE_1__ xclip; int display; } ;
typedef TYPE_2__ RDPCLIENT ;


 int None ;
 scalar_t__ XGetSelectionOwner (int ,int ) ;
 int XSetSelectionOwner (int ,int ,int ,int ) ;
 int xclip_notify_change (TYPE_2__*) ;

void
xclip_deinit(RDPCLIENT * This)
{
 if (XGetSelectionOwner(This->display, This->xclip.primary_atom) == This->wnd)
  XSetSelectionOwner(This->display, This->xclip.primary_atom, None, This->xclip.acquire_time);
 if (XGetSelectionOwner(This->display, This->xclip.clipboard_atom) == This->wnd)
  XSetSelectionOwner(This->display, This->xclip.clipboard_atom, None, This->xclip.acquire_time);
 xclip_notify_change(This);
}
