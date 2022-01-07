
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int display; } ;
typedef TYPE_1__ RDPCLIENT ;


 int DefaultRootWindow (int ) ;
 int XFree (unsigned char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ get_property_value (TYPE_1__*,int ,char*,int,unsigned long*,unsigned char**,int ) ;
 int stderr ;

__attribute__((used)) static int
get_current_desktop(RDPCLIENT * This)
{
 unsigned long nitems_return;
 unsigned char *prop_return;
 int current_desktop;

 if (get_property_value
     (This, DefaultRootWindow(This->display), "_NET_CURRENT_DESKTOP", 1, &nitems_return,
      &prop_return, 0) < 0)
  return (-1);

 if (nitems_return != 1)
 {
  fprintf(stderr, "_NET_CURRENT_DESKTOP has bad length\n");
  return (-1);
 }

 current_desktop = *prop_return;
 XFree(prop_return);
 return current_desktop;
}
