
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int seamless_hidden; scalar_t__ seamless_started; } ;
struct TYPE_6__ {TYPE_1__ xwin; int seamless_rdp; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 scalar_t__ True ;
 int ui_seamless_toggle (TYPE_2__*) ;

void
ui_seamless_begin(RDPCLIENT * This, BOOL hidden)
{
 if (!This->seamless_rdp)
  return;

 if (This->xwin.seamless_started)
  return;

 This->xwin.seamless_started = True;
 This->xwin.seamless_hidden = hidden;

 if (!hidden)
  ui_seamless_toggle(This);
}
