
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct screen {int * sel; } ;
struct window_copy_mode_data {scalar_t__ lineflag; int cursordrag; scalar_t__ endselx; scalar_t__ endsely; scalar_t__ selx; scalar_t__ sely; scalar_t__ cy; scalar_t__ oy; int backing; scalar_t__ cx; struct screen screen; } ;





 scalar_t__ LINE_SEL_LEFT_RIGHT ;
 scalar_t__ LINE_SEL_NONE ;
 scalar_t__ LINE_SEL_RIGHT_LEFT ;
 scalar_t__ screen_hsize (int ) ;
 scalar_t__ screen_size_y (struct screen*) ;
 int window_copy_redraw_screen (struct window_mode_entry*) ;
 int window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_other_end(struct window_mode_entry *wme)
{
 struct window_copy_mode_data *data = wme->data;
 struct screen *s = &data->screen;
 u_int selx, sely, cy, yy, hsize;

 if (s->sel == ((void*)0) && data->lineflag == LINE_SEL_NONE)
  return;

 if (data->lineflag == LINE_SEL_LEFT_RIGHT)
  data->lineflag = LINE_SEL_RIGHT_LEFT;
 else if (data->lineflag == LINE_SEL_RIGHT_LEFT)
  data->lineflag = LINE_SEL_LEFT_RIGHT;

 switch (data->cursordrag) {
  case 129:
  case 128:
   data->cursordrag = 130;
   break;
  case 130:
   data->cursordrag = 128;
   break;
 }

 selx = data->endselx;
 sely = data->endsely;
 if (data->cursordrag == 128) {
  selx = data->selx;
  sely = data->sely;
 }

 cy = data->cy;
 yy = screen_hsize(data->backing) + data->cy - data->oy;

 data->cx = selx;

 hsize = screen_hsize(data->backing);
 if (sely < hsize - data->oy) {
  data->oy = hsize - sely;
  data->cy = 0;
 } else if (sely > hsize - data->oy + screen_size_y(s)) {
  data->oy = hsize - sely + screen_size_y(s) - 1;
  data->cy = screen_size_y(s) - 1;
 } else
  data->cy = cy + sely - yy;

 window_copy_update_selection(wme, 1);
 window_copy_redraw_screen(wme);
}
