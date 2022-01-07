
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_12__ {int your_event_mask; } ;
typedef TYPE_2__ XWindowAttributes ;
struct TYPE_13__ {scalar_t__ state; scalar_t__ atom; scalar_t__ window; } ;
typedef TYPE_3__ XPropertyEvent ;
struct TYPE_11__ {scalar_t__ clip_buflen; scalar_t__ rdesktop_selection_notify_atom; int rdesktop_clipboard_target_atom; int * clip_buffer; int incr_target; scalar_t__ waiting_for_INCR; } ;
struct TYPE_14__ {int display; TYPE_1__ xclip; int wnd; } ;
typedef TYPE_4__ RDPCLIENT ;
typedef int Atom ;


 int AnyPropertyType ;
 int DEBUG_CLIPBOARD (char*) ;
 scalar_t__ DefaultRootWindow (int ) ;
 int False ;
 int PropertyChangeMask ;
 scalar_t__ PropertyNewValue ;
 scalar_t__ Success ;
 int XDeleteProperty (int ,int ,int ) ;
 int XFree (int *) ;
 int XGetWindowAttributes (int ,int ,TYPE_2__*) ;
 scalar_t__ XGetWindowProperty (int ,int ,int ,unsigned long,long,int ,int ,int *,int*,unsigned long*,unsigned long*,int **) ;
 int XSelectInput (int ,int ,int) ;
 int helper_cliprdr_send_empty_response (TYPE_4__*) ;
 int memcpy (int *,int *,unsigned long) ;
 int xclip_probe_selections (TYPE_4__*) ;
 int xclip_send_data_with_convert (TYPE_4__*,int *,scalar_t__,int ) ;
 int xfree (int *) ;
 int * xrealloc (int *,scalar_t__) ;

void
xclip_handle_PropertyNotify(RDPCLIENT * This, XPropertyEvent * event)
{
 unsigned long nitems;
 unsigned long offset = 0;
 unsigned long bytes_left = 1;
 int format;
 XWindowAttributes wa;
 uint8 *data;
 Atom type;

 if (event->state == PropertyNewValue && This->xclip.waiting_for_INCR)
 {
  DEBUG_CLIPBOARD(("x_clip_handle_PropertyNotify: This->xclip.waiting_for_INCR != 0\n"));

  while (bytes_left > 0)
  {


   if ((XGetWindowProperty
        (This->display, This->wnd, This->xclip.rdesktop_clipboard_target_atom, offset, 4096L,
         False, AnyPropertyType, &type, &format, &nitems, &bytes_left,
         &data) != Success))
   {
    XFree(data);
    return;
   }

   if (nitems == 0)
   {

    XGetWindowAttributes(This->display, This->wnd, &wa);
    XSelectInput(This->display, This->wnd,
          (wa.your_event_mask ^ PropertyChangeMask));
    XFree(data);
    This->xclip.waiting_for_INCR = 0;

    if (This->xclip.clip_buflen > 0)
    {
     if (!xclip_send_data_with_convert
         (This, This->xclip.clip_buffer, This->xclip.clip_buflen, This->xclip.incr_target))
     {
      helper_cliprdr_send_empty_response(This);
     }
     xfree(This->xclip.clip_buffer);
     This->xclip.clip_buffer = ((void*)0);
     This->xclip.clip_buflen = 0;
    }
   }
   else
   {

    offset += (nitems / 4);
    This->xclip.clip_buffer = xrealloc(This->xclip.clip_buffer, This->xclip.clip_buflen + nitems);
    memcpy(This->xclip.clip_buffer + This->xclip.clip_buflen, data, nitems);
    This->xclip.clip_buflen += nitems;

    XFree(data);
   }
  }
  XDeleteProperty(This->display, This->wnd, This->xclip.rdesktop_clipboard_target_atom);
  return;
 }

 if ((event->atom == This->xclip.rdesktop_selection_notify_atom) &&
     (event->window == DefaultRootWindow(This->display)))
  xclip_probe_selections(This);
}
