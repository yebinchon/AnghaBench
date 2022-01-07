
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_8__ {scalar_t__* l; } ;
struct TYPE_9__ {int format; TYPE_1__ data; int message_type; int window; } ;
struct TYPE_10__ {TYPE_2__ xclient; int type; } ;
typedef TYPE_3__ XEvent ;
typedef int Window ;
struct TYPE_11__ {int display; int net_wm_state_atom; } ;
typedef int Status ;
typedef TYPE_4__ RDPCLIENT ;
typedef scalar_t__ Atom ;


 int ClientMessage ;
 int DefaultRootWindow (int ) ;
 int False ;
 int PropModeAppend ;
 int PropModeReplace ;
 int SubstructureNotifyMask ;
 int SubstructureRedirectMask ;
 scalar_t__ WithdrawnState ;
 int XA_ATOM ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,unsigned long) ;
 int XFree (unsigned char*) ;
 int XSendEvent (int ,int ,int ,int,TYPE_3__*) ;
 scalar_t__ _NET_WM_STATE_ADD ;
 scalar_t__ _NET_WM_STATE_REMOVE ;
 scalar_t__ get_property_value (TYPE_4__*,int ,char*,int,unsigned long*,unsigned char**,int) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static int
ewmh_modify_state(RDPCLIENT * This, Window wnd, int add, Atom atom1, Atom atom2)
{
 Status status;
 XEvent xevent;

 int result;
 unsigned long nitems;
 unsigned char *props;
 uint32 state = WithdrawnState;





 result = get_property_value(This, wnd, "WM_STATE", 64, &nitems, &props, 1);
 if ((result >= 0) && nitems)
 {
  state = *(uint32 *) props;
  XFree(props);
 }

 if (state == WithdrawnState)
 {
  if (add)
  {
   Atom atoms[2];

   atoms[0] = atom1;
   nitems = 1;
   if (atom2)
   {
    atoms[1] = atom2;
    nitems = 2;
   }

   XChangeProperty(This->display, wnd, This->net_wm_state_atom, XA_ATOM,
     32, PropModeAppend, (unsigned char *) atoms, nitems);
  }
  else
  {
   Atom *atoms;
   int i;

   if (get_property_value(This, wnd, "_NET_WM_STATE", 64, &nitems, &props, 1) < 0)
    return 0;

   atoms = (Atom *) props;

   for (i = 0; i < nitems; i++)
   {
    if ((atoms[i] == atom1) || (atom2 && (atoms[i] == atom2)))
    {
     if (i != (nitems - 1))
      memmove(&atoms[i], &atoms[i + 1],
       sizeof(Atom) * (nitems - i - 1));
     nitems--;
     i--;
    }
   }

   XChangeProperty(This->display, wnd, This->net_wm_state_atom, XA_ATOM,
     32, PropModeReplace, (unsigned char *) atoms, nitems);

   XFree(props);
  }

  return 0;
 }

 xevent.type = ClientMessage;
 xevent.xclient.window = wnd;
 xevent.xclient.message_type = This->net_wm_state_atom;
 xevent.xclient.format = 32;
 if (add)
  xevent.xclient.data.l[0] = _NET_WM_STATE_ADD;
 else
  xevent.xclient.data.l[0] = _NET_WM_STATE_REMOVE;
 xevent.xclient.data.l[1] = atom1;
 xevent.xclient.data.l[2] = atom2;
 xevent.xclient.data.l[3] = 0;
 xevent.xclient.data.l[4] = 0;
 status = XSendEvent(This->display, DefaultRootWindow(This->display), False,
       SubstructureNotifyMask | SubstructureRedirectMask, &xevent);
 if (!status)
  return -1;

 return 0;
}
