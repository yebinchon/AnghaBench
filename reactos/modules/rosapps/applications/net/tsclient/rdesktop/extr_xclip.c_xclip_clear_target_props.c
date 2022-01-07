
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rdesktop_clipboard_timestamp_target_atom; int rdesktop_primary_timestamp_target_atom; int rdesktop_clipboard_target_atom; } ;
struct TYPE_5__ {TYPE_1__ xclip; int wnd; int display; } ;
typedef TYPE_2__ RDPCLIENT ;


 int XDeleteProperty (int ,int ,int ) ;

__attribute__((used)) static void
xclip_clear_target_props(RDPCLIENT * This)
{
 XDeleteProperty(This->display, This->wnd, This->xclip.rdesktop_clipboard_target_atom);
 XDeleteProperty(This->display, This->wnd, This->xclip.rdesktop_primary_timestamp_target_atom);
 XDeleteProperty(This->display, This->wnd, This->xclip.rdesktop_clipboard_timestamp_target_atom);
}
