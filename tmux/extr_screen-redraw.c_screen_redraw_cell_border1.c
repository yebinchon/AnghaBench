
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {scalar_t__ xoff; scalar_t__ sx; scalar_t__ yoff; scalar_t__ sy; } ;



__attribute__((used)) static int
screen_redraw_cell_border1(struct window_pane *wp, u_int px, u_int py)
{

 if (px >= wp->xoff && px < wp->xoff + wp->sx &&
     py >= wp->yoff && py < wp->yoff + wp->sy)
  return (0);


 if ((wp->yoff == 0 || py >= wp->yoff - 1) && py <= wp->yoff + wp->sy) {
  if (wp->xoff != 0 && px == wp->xoff - 1)
   return (1);
  if (px == wp->xoff + wp->sx)
   return (2);
 }


 if ((wp->xoff == 0 || px >= wp->xoff - 1) && px <= wp->xoff + wp->sx) {
  if (wp->yoff != 0 && py == wp->yoff - 1)
   return (3);
  if (py == wp->yoff + wp->sy)
   return (4);
 }


 return (-1);
}
