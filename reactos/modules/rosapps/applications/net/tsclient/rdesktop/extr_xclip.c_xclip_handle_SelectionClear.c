
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 int DEBUG_CLIPBOARD (char*) ;
 int xclip_notify_change (int *) ;
 int xclip_probe_selections (int *) ;

void
xclip_handle_SelectionClear(RDPCLIENT * This)
{
 DEBUG_CLIPBOARD(("xclip_handle_SelectionClear\n"));
 xclip_notify_change(This);
 xclip_probe_selections(This);
}
