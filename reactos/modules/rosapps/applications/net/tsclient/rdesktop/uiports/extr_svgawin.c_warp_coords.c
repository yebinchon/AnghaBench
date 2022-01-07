
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int False ;
 int True ;
 int clip_endx ;
 int clip_endy ;
 int clip_startx ;
 int clip_starty ;

int warp_coords(int* x, int* y, int* cx, int* cy, int* srcx, int* srcy)
{
  int dx;
  int dy;


  if (clip_startx > *x)
    dx = clip_startx - *x;
  else
    dx = 0;
  if (clip_starty > *y)
    dy = clip_starty - *y;
  else
    dy = 0;
  if (*x + *cx > clip_endx)
    *cx = (*cx - ((*x + *cx) - clip_endx)) ;
  if (*y + *cy > clip_endy)
    *cy = (*cy - ((*y + *cy) - clip_endy)) ;
  *cx = *cx - dx;
  *cy = *cy - dy;
  if (*cx <= 0)
    return False;
  if (*cy <= 0)
    return False;
  *x = *x + dx;
  *y = *y + dy;
  if (srcx != ((void*)0))
    *srcx = *srcx + dx;
  if (srcy != ((void*)0))
    *srcy = *srcy + dy;




  return True;
}
