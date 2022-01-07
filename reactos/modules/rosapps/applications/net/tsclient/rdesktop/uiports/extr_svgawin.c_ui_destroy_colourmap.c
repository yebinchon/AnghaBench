
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HCOLOURMAP ;


 scalar_t__ colmap ;
 int xfree (scalar_t__) ;

void ui_destroy_colourmap(HCOLOURMAP map)
{
  if (colmap == map)
    colmap = 0;
  xfree(map);
}
