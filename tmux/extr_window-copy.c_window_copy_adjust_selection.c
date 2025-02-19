
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct screen {int dummy; } ;
struct window_copy_mode_data {int oy; int rectflag; int backing; struct screen screen; } ;


 int WINDOW_COPY_REL_POS_ABOVE ;
 int WINDOW_COPY_REL_POS_BELOW ;
 int WINDOW_COPY_REL_POS_ON_SCREEN ;
 int screen_hsize (int ) ;
 int screen_size_x (struct screen*) ;
 int screen_size_y (struct screen*) ;

__attribute__((used)) static int
window_copy_adjust_selection(struct window_mode_entry *wme, u_int *selx,
    u_int *sely)
{
 struct window_copy_mode_data *data = wme->data;
 struct screen *s = &data->screen;
 u_int sx, sy, ty;
 int relpos;

 sx = *selx;
 sy = *sely;

 ty = screen_hsize(data->backing) - data->oy;
 if (sy < ty) {
  relpos = WINDOW_COPY_REL_POS_ABOVE;
  if (!data->rectflag)
   sx = 0;
  sy = 0;
 } else if (sy > ty + screen_size_y(s) - 1) {
  relpos = WINDOW_COPY_REL_POS_BELOW;
  if (!data->rectflag)
   sx = screen_size_x(s) - 1;
  sy = screen_size_y(s) - 1;
 } else {
  relpos = WINDOW_COPY_REL_POS_ON_SCREEN;
  sy -= ty;
 }

 *selx = sx;
 *sely = sy;
 return (relpos);
}
