
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; int owncolmap; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef scalar_t__ HCOLOURMAP ;
typedef int Colormap ;


 int XFreeColormap (int ,int ) ;
 int xfree (scalar_t__) ;

void
ui_destroy_colourmap(RDPCLIENT * This, HCOLOURMAP map)
{
 if (!This->owncolmap)
  xfree(map);
 else
  XFreeColormap(This->display, (Colormap) map);
}
