
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* colmap ;
 int vga_setpalvec (int ,int,int*) ;
 int xfree (void*) ;

void ui_set_colourmap(void* map)
{
  if (colmap != 0)
    xfree(colmap);
  vga_setpalvec(0, 256, (int*)map);
  colmap = map;
}
