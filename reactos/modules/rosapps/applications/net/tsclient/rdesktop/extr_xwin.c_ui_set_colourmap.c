
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {int wnd; } ;
struct TYPE_5__ {int * colmap; } ;
struct TYPE_6__ {int display; int wnd; TYPE_1__ xwin; int owncolmap; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef scalar_t__ HCOLOURMAP ;
typedef int Colormap ;


 int ON_ALL_SEAMLESS_WINDOWS (int (*) (int ,int ,int ),int ) ;
 int XSetWindowColormap (int ,int ,int ) ;
 TYPE_4__* sw ;
 int xfree (int *) ;

void
ui_set_colourmap(RDPCLIENT * This, HCOLOURMAP map)
{
 if (!This->owncolmap)
 {
  if (This->xwin.colmap)
   xfree(This->xwin.colmap);

  This->xwin.colmap = (uint32 *) map;
 }
 else
 {
  XSetWindowColormap(This->display, This->wnd, (Colormap) map);
  ON_ALL_SEAMLESS_WINDOWS(XSetWindowColormap, (This->display, sw->wnd, (Colormap) map));
 }
}
