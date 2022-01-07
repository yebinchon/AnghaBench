
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ requestor; int time; int target; int selection; int property; } ;
typedef TYPE_2__ XSelectionRequestEvent ;
struct TYPE_8__ {int time; int property; int target; int selection; scalar_t__ requestor; int send_event; scalar_t__ serial; int type; } ;
struct TYPE_10__ {TYPE_1__ xselection; } ;
typedef TYPE_3__ XEvent ;
struct TYPE_11__ {int display; } ;
typedef TYPE_4__ RDPCLIENT ;


 int DEBUG_CLIPBOARD (char*) ;
 int False ;
 int NoEventMask ;
 int None ;
 int SelectionNotify ;
 int True ;
 int XGetAtomName (int ,int ) ;
 int XSendEvent (int ,scalar_t__,int ,int ,TYPE_3__*) ;

__attribute__((used)) static void
xclip_refuse_selection(RDPCLIENT * This, XSelectionRequestEvent * req)
{
 XEvent xev;

 DEBUG_CLIPBOARD(("xclip_refuse_selection: requestor=0x%08x, target=%s, property=%s\n",
    (unsigned) req->requestor, XGetAtomName(This->display, req->target),
    XGetAtomName(This->display, req->property)));

 xev.xselection.type = SelectionNotify;
 xev.xselection.serial = 0;
 xev.xselection.send_event = True;
 xev.xselection.requestor = req->requestor;
 xev.xselection.selection = req->selection;
 xev.xselection.target = req->target;
 xev.xselection.property = None;
 xev.xselection.time = req->time;
 XSendEvent(This->display, req->requestor, False, NoEventMask, &xev);
}
