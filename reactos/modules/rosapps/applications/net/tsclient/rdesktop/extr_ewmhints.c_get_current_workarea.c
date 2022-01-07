
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int display; } ;
typedef TYPE_1__ RDPCLIENT ;


 int DefaultRootWindow (int ) ;
 int XFree (unsigned char*) ;
 int fprintf (int ,char*) ;
 int get_current_desktop (TYPE_1__*) ;
 scalar_t__ get_property_value (TYPE_1__*,int ,char*,int const,unsigned long*,unsigned char**,int ) ;
 int stderr ;

int
get_current_workarea(RDPCLIENT * This, uint32 * x, uint32 * y, uint32 * width, uint32 * height)
{
 int current_desktop;
 unsigned long nitems_return;
 unsigned char *prop_return;
 uint32 *return_words;
 const uint32 net_workarea_x_offset = 0;
 const uint32 net_workarea_y_offset = 1;
 const uint32 net_workarea_width_offset = 2;
 const uint32 net_workarea_height_offset = 3;
 const uint32 max_prop_length = 32 * 4;

 if (get_property_value
     (This, DefaultRootWindow(This->display), "_NET_WORKAREA", max_prop_length, &nitems_return,
      &prop_return, 0) < 0)
  return (-1);

 if (nitems_return % 4)
 {
  fprintf(stderr, "_NET_WORKAREA has odd length\n");
  return (-1);
 }

 current_desktop = get_current_desktop(This);

 if (current_desktop < 0)
  return -1;

 return_words = (uint32 *) prop_return;

 *x = return_words[current_desktop * 4 + net_workarea_x_offset];
 *y = return_words[current_desktop * 4 + net_workarea_y_offset];
 *width = return_words[current_desktop * 4 + net_workarea_width_offset];
 *height = return_words[current_desktop * 4 + net_workarea_height_offset];

 XFree(prop_return);

 return (0);

}
