
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_9__ {scalar_t__ requestor; int time; int property; int target; int selection; } ;
typedef TYPE_2__ XSelectionRequestEvent ;
struct TYPE_8__ {int time; int property; int target; int selection; scalar_t__ requestor; int send_event; scalar_t__ serial; int type; } ;
struct TYPE_10__ {TYPE_1__ xselection; } ;
typedef TYPE_3__ XEvent ;
struct TYPE_11__ {int display; } ;
typedef TYPE_4__ RDPCLIENT ;
typedef int Atom ;


 int DEBUG_CLIPBOARD (char*) ;
 int False ;
 int NoEventMask ;
 int PropModeReplace ;
 int SelectionNotify ;
 int True ;
 int XChangeProperty (int ,scalar_t__,int ,int ,unsigned int,int ,int *,scalar_t__) ;
 int XGetAtomName (int ,int ) ;
 int XSendEvent (int ,scalar_t__,int ,int ,TYPE_3__*) ;

__attribute__((used)) static void
xclip_provide_selection(RDPCLIENT * This, XSelectionRequestEvent * req, Atom type, unsigned int format, uint8 * data,
   uint32 length)
{
 XEvent xev;

 DEBUG_CLIPBOARD(("xclip_provide_selection: requestor=0x%08x, target=%s, property=%s, length=%u\n", (unsigned) req->requestor, XGetAtomName(This->display, req->target), XGetAtomName(This->display, req->property), (unsigned) length));

 XChangeProperty(This->display, req->requestor, req->property,
   type, format, PropModeReplace, data, length);

 xev.xselection.type = SelectionNotify;
 xev.xselection.serial = 0;
 xev.xselection.send_event = True;
 xev.xselection.requestor = req->requestor;
 xev.xselection.selection = req->selection;
 xev.xselection.target = req->target;
 xev.xselection.property = req->property;
 xev.xselection.time = req->time;
 XSendEvent(This->display, req->requestor, False, NoEventMask, &xev);
}
