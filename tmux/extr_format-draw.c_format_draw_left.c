
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct screen_write_ctx {int dummy; } ;
struct screen {scalar_t__ cx; } ;
struct format_ranges {int dummy; } ;


 int format_draw_none (struct screen_write_ctx*,scalar_t__,scalar_t__,scalar_t__,struct screen*,struct screen*,struct screen*,struct format_ranges*) ;
 int format_draw_put (struct screen_write_ctx*,scalar_t__,scalar_t__,struct screen*,struct format_ranges*,scalar_t__,int,scalar_t__) ;
 int format_draw_put_list (struct screen_write_ctx*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct screen*,struct screen*,struct screen*,int,int,struct format_ranges*) ;
 int screen_write_fast_copy (struct screen_write_ctx*,struct screen*,int ,int ,scalar_t__,int) ;
 int screen_write_start (struct screen_write_ctx*,int *,struct screen*) ;
 int screen_write_stop (struct screen_write_ctx*) ;

__attribute__((used)) static void
format_draw_left(struct screen_write_ctx *octx, u_int available, u_int ocx,
    u_int ocy, struct screen *left, struct screen *centre, struct screen *right,
    struct screen *list, struct screen *list_left, struct screen *list_right,
    struct screen *after, int focus_start, int focus_end,
    struct format_ranges *frs)
{
 u_int width_left, width_centre, width_right;
 u_int width_list, width_after;
 struct screen_write_ctx ctx;

 width_left = left->cx;
 width_centre = centre->cx;
 width_right = right->cx;
 width_list = list->cx;
 width_after = after->cx;





 while (width_left +
     width_centre +
     width_right +
     width_list +
     width_after > available) {
  if (width_centre > 0)
   width_centre--;
  else if (width_list > 0)
   width_list--;
  else if (width_right > 0)
   width_right--;
  else if (width_after > 0)
   width_after--;
  else
   width_left--;
 }


 if (width_list == 0) {
  screen_write_start(&ctx, ((void*)0), left);
  screen_write_fast_copy(&ctx, after, 0, 0, width_after, 1);
  screen_write_stop(&ctx);

  format_draw_none(octx, available, ocx, ocy, left, centre,
      right, frs);
  return;
 }


 format_draw_put(octx, ocx, ocy, left, frs, 0, 0, width_left);


 format_draw_put(octx, ocx, ocy, right, frs,
     available - width_right,
     right->cx - width_right,
     width_right);


 format_draw_put(octx, ocx, ocy, after, frs,
     width_left + width_list,
     0,
     width_after);







 format_draw_put(octx, ocx, ocy, centre, frs,
     (width_left + width_list + width_after)
     + ((available - width_right)
  - (width_left + width_list + width_after)) / 2
     - width_centre / 2,
     centre->cx / 2 - width_centre / 2,
     width_centre);
 if (focus_start == -1 || focus_end == -1)
  focus_start = focus_end = 0;
 format_draw_put_list(octx, ocx, ocy, width_left, width_list, list,
     list_left, list_right, focus_start, focus_end, frs);
}
