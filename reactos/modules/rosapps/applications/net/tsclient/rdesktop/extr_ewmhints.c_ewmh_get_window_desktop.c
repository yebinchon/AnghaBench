
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Window ;
typedef int RDPCLIENT ;


 int XFree (unsigned char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ get_property_value (int *,int ,char*,int,unsigned long*,unsigned char**,int ) ;
 int stderr ;

int
ewmh_get_window_desktop(RDPCLIENT * This, Window wnd)
{
 unsigned long nitems_return;
 unsigned char *prop_return;
 int desktop;

 if (get_property_value(This, wnd, "_NET_WM_DESKTOP", 1, &nitems_return, &prop_return, 0) < 0)
  return (-1);

 if (nitems_return != 1)
 {
  fprintf(stderr, "_NET_WM_DESKTOP has bad length\n");
  return (-1);
 }

 desktop = *prop_return;
 XFree(prop_return);
 return desktop;
}
