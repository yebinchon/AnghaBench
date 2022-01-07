
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct screen_write_ctx {int dummy; } ;
struct screen {int cx; } ;
struct format_ranges {int dummy; } ;


 int format_draw_put (struct screen_write_ctx*,int,int,struct screen*,struct format_ranges*,int,int,int) ;
 int screen_write_cursormove (struct screen_write_ctx*,int,int,int ) ;
 int screen_write_fast_copy (struct screen_write_ctx*,struct screen*,int ,int ,int,int) ;

__attribute__((used)) static void
format_draw_put_list(struct screen_write_ctx *octx,
    u_int ocx, u_int ocy, u_int offset, u_int width, struct screen *list,
    struct screen *list_left, struct screen *list_right, int focus_start,
    int focus_end, struct format_ranges *frs)
{
 u_int start, focus_centre;


 if (width >= list->cx) {
  format_draw_put(octx, ocx, ocy, list, frs, offset, 0, width);
  return;
 }


 focus_centre = focus_start + (focus_end - focus_start) / 2;
 if (focus_centre < width / 2)
  start = 0;
 else
  start = focus_centre - width / 2;
 if (start + width > list->cx)
  start = list->cx - width;


 if (start != 0 && width > list_left->cx) {
  screen_write_cursormove(octx, ocx + offset, ocy, 0);
  screen_write_fast_copy(octx, list_left, 0, 0, list_left->cx, 1);
  offset += list_left->cx;
  start += list_left->cx;
  width -= list_left->cx;
 }
 if (start + width < list->cx && width > list_right->cx) {
  screen_write_cursormove(octx, ocx + offset + width - 1, ocy, 0);
  screen_write_fast_copy(octx, list_right, 0, 0, list_right->cx,
      1);
  width -= list_right->cx;
 }


 format_draw_put(octx, ocx, ocy, list, frs, offset, start, width);
}
