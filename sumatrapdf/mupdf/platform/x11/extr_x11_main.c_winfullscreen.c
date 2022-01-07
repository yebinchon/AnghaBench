
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdfapp_t ;
struct TYPE_5__ {int* l; } ;
struct TYPE_6__ {int format; TYPE_1__ data; int message_type; int window; int send_event; scalar_t__ serial; int type; } ;
struct TYPE_7__ {TYPE_2__ xclient; } ;
typedef TYPE_3__ XEvent ;


 int ClientMessage ;
 int DefaultRootWindow (int ) ;
 int False ;
 int NET_WM_STATE ;
 int NET_WM_STATE_FULLSCREEN ;
 int SubstructureNotifyMask ;
 int SubstructureRedirectMask ;
 int True ;
 int XSendEvent (int ,int ,int ,int,TYPE_3__*) ;
 int xdpy ;
 int xwin ;

void winfullscreen(pdfapp_t *app, int state)
{
 XEvent xev;
 xev.xclient.type = ClientMessage;
 xev.xclient.serial = 0;
 xev.xclient.send_event = True;
 xev.xclient.window = xwin;
 xev.xclient.message_type = NET_WM_STATE;
 xev.xclient.format = 32;
 xev.xclient.data.l[0] = state;
 xev.xclient.data.l[1] = NET_WM_STATE_FULLSCREEN;
 xev.xclient.data.l[2] = 0;
 XSendEvent(xdpy, DefaultRootWindow(xdpy), False,
  SubstructureRedirectMask | SubstructureNotifyMask,
  &xev);
}
