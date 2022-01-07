
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdfapp_t ;
struct TYPE_5__ {scalar_t__* l; } ;
struct TYPE_6__ {int format; TYPE_1__ data; int message_type; int window; int send_event; scalar_t__ serial; int type; } ;
struct TYPE_7__ {TYPE_2__ xclient; } ;
typedef TYPE_3__ XEvent ;
typedef int Display ;


 int ClientMessage ;
 int True ;
 int WM_RELOAD_PAGE ;
 int XCloseDisplay (int *) ;
 int * XOpenDisplay (int *) ;
 int XSendEvent (int *,int ,int ,int ,TYPE_3__*) ;
 int xwin ;

void winreloadpage(pdfapp_t *app)
{
 XEvent xev;
 Display *dpy = XOpenDisplay(((void*)0));

 xev.xclient.type = ClientMessage;
 xev.xclient.serial = 0;
 xev.xclient.send_event = True;
 xev.xclient.window = xwin;
 xev.xclient.message_type = WM_RELOAD_PAGE;
 xev.xclient.format = 32;
 xev.xclient.data.l[0] = 0;
 xev.xclient.data.l[1] = 0;
 xev.xclient.data.l[2] = 0;
 XSendEvent(dpy, xwin, 0, 0, &xev);
 XCloseDisplay(dpy);
}
