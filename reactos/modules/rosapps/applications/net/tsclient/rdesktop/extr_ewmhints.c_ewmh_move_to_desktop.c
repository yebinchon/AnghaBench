
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int* l; } ;
struct TYPE_8__ {int format; TYPE_1__ data; int message_type; int window; } ;
struct TYPE_9__ {TYPE_2__ xclient; int type; } ;
typedef TYPE_3__ XEvent ;
typedef int Window ;
struct TYPE_10__ {int display; int net_wm_desktop_atom; } ;
typedef int Status ;
typedef TYPE_4__ RDPCLIENT ;


 int ClientMessage ;
 int DefaultRootWindow (int ) ;
 int False ;
 int SubstructureNotifyMask ;
 int SubstructureRedirectMask ;
 int XSendEvent (int ,int ,int ,int,TYPE_3__*) ;

int
ewmh_move_to_desktop(RDPCLIENT * This, Window wnd, unsigned int desktop)
{
 Status status;
 XEvent xevent;

 xevent.type = ClientMessage;
 xevent.xclient.window = wnd;
 xevent.xclient.message_type = This->net_wm_desktop_atom;
 xevent.xclient.format = 32;
 xevent.xclient.data.l[0] = desktop;
 xevent.xclient.data.l[1] = 0;
 xevent.xclient.data.l[2] = 0;
 xevent.xclient.data.l[3] = 0;
 xevent.xclient.data.l[4] = 0;
 status = XSendEvent(This->display, DefaultRootWindow(This->display), False,
       SubstructureNotifyMask | SubstructureRedirectMask, &xevent);
 if (!status)
  return -1;

 return 0;
}
