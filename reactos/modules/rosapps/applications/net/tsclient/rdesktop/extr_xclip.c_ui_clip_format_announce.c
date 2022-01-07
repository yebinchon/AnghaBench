
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_5__ {int formats_data_length; scalar_t__ formats_data; int clipboard_atom; int acquire_time; int primary_atom; } ;
struct TYPE_6__ {scalar_t__ wnd; TYPE_1__ xclip; int display; int last_gesturetime; } ;
typedef TYPE_2__ RDPCLIENT ;


 scalar_t__ XGetSelectionOwner (int ,int ) ;
 int XSetSelectionOwner (int ,int ,scalar_t__,int ) ;
 int memcpy (scalar_t__,int *,int ) ;
 int warning (char*) ;
 int xclip_notify_change (TYPE_2__*) ;
 int xfree (scalar_t__) ;
 scalar_t__ xmalloc (int ) ;

void
ui_clip_format_announce(RDPCLIENT * This, uint8 * data, uint32 length)
{
 This->xclip.acquire_time = This->last_gesturetime;

 XSetSelectionOwner(This->display, This->xclip.primary_atom, This->wnd, This->xclip.acquire_time);
 if (XGetSelectionOwner(This->display, This->xclip.primary_atom) != This->wnd)
  warning("Failed to aquire ownership of PRIMARY clipboard\n");

 XSetSelectionOwner(This->display, This->xclip.clipboard_atom, This->wnd, This->xclip.acquire_time);
 if (XGetSelectionOwner(This->display, This->xclip.clipboard_atom) != This->wnd)
  warning("Failed to aquire ownership of CLIPBOARD clipboard\n");

 if (This->xclip.formats_data)
  xfree(This->xclip.formats_data);
 This->xclip.formats_data = xmalloc(length);
 memcpy(This->xclip.formats_data, data, length);
 This->xclip.formats_data_length = length;

 xclip_notify_change(This);
}
