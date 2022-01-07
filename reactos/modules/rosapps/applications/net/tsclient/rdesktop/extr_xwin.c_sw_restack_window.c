
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned long behind; unsigned long id; struct TYPE_7__* next; } ;
typedef TYPE_2__ seamless_window ;
struct TYPE_6__ {TYPE_2__* seamless_windows; } ;
struct TYPE_8__ {TYPE_1__ xwin; } ;
typedef TYPE_3__ RDPCLIENT ;



__attribute__((used)) static void
sw_restack_window(RDPCLIENT * This, seamless_window * sw, unsigned long behind)
{
 seamless_window *sw_above;


 for (sw_above = This->xwin.seamless_windows; sw_above; sw_above = sw_above->next)
 {
  if (sw_above->behind == sw->id)
   break;
 }

 if (sw_above)
  sw_above->behind = sw->behind;


 for (sw_above = This->xwin.seamless_windows; sw_above; sw_above = sw_above->next)
 {
  if (sw_above->behind == behind)
   break;
 }

 if (sw_above)
  sw_above->behind = sw->id;

 sw->behind = behind;
}
