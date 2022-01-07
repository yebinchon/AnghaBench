
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int atomlist ;
struct TYPE_4__ {scalar_t__ property; int time; scalar_t__ target; scalar_t__ selection; int requestor; int display; int send_event; int type; } ;
struct TYPE_5__ {TYPE_1__ xselection; } ;
typedef TYPE_2__ XEvent ;
typedef int Window ;
typedef int Time ;
typedef scalar_t__ Atom ;


 int False ;
 scalar_t__ None ;
 int PropModeReplace ;
 int SelectionNotify ;
 int True ;
 scalar_t__ XA_STRING ;
 scalar_t__ XA_TARGETS ;
 scalar_t__ XA_TIMESTAMP ;
 scalar_t__ XA_UTF8_STRING ;
 int XChangeProperty (int ,int ,scalar_t__,scalar_t__,int,int ,unsigned char*,int) ;
 int XSendEvent (int ,int ,int ,int ,TYPE_2__*) ;
 scalar_t__ advance_scheduled ;
 scalar_t__ copylatin1 ;
 scalar_t__ copyutf8 ;
 int strlen (scalar_t__) ;
 int xdpy ;

__attribute__((used)) static void onselreq(Window requestor, Atom selection, Atom target, Atom property, Time time)
{
 XEvent nevt;

 advance_scheduled = 0;

 if (property == None)
  property = target;

 nevt.xselection.type = SelectionNotify;
 nevt.xselection.send_event = True;
 nevt.xselection.display = xdpy;
 nevt.xselection.requestor = requestor;
 nevt.xselection.selection = selection;
 nevt.xselection.target = target;
 nevt.xselection.property = property;
 nevt.xselection.time = time;

 if (target == XA_TARGETS)
 {
  Atom atomlist[4];
  atomlist[0] = XA_TARGETS;
  atomlist[1] = XA_TIMESTAMP;
  atomlist[2] = XA_STRING;
  atomlist[3] = XA_UTF8_STRING;
  XChangeProperty(xdpy, requestor, property, target,
   32, PropModeReplace,
   (unsigned char *)atomlist, sizeof(atomlist)/sizeof(Atom));
 }

 else if (target == XA_STRING)
 {
  XChangeProperty(xdpy, requestor, property, target,
   8, PropModeReplace,
   (unsigned char *)copylatin1, strlen(copylatin1));
 }

 else if (target == XA_UTF8_STRING)
 {
  XChangeProperty(xdpy, requestor, property, target,
   8, PropModeReplace,
   (unsigned char *)copyutf8, strlen(copyutf8));
 }

 else
 {
  nevt.xselection.property = None;
 }

 XSendEvent(xdpy, requestor, False, 0, &nevt);
}
