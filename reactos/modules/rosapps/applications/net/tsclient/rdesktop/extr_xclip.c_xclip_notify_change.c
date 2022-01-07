
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rdesktop_selection_notify_atom; } ;
struct TYPE_5__ {TYPE_1__ xclip; int display; } ;
typedef TYPE_2__ RDPCLIENT ;


 int DefaultRootWindow (int ) ;
 int PropModeReplace ;
 int XA_INTEGER ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,int *,int ) ;

__attribute__((used)) static void
xclip_notify_change(RDPCLIENT * This)
{
 XChangeProperty(This->display, DefaultRootWindow(This->display),
   This->xclip.rdesktop_selection_notify_atom, XA_INTEGER, 32, PropModeReplace, ((void*)0), 0);
}
