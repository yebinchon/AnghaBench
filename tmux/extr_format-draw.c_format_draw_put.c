
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct screen_write_ctx {int dummy; } ;
struct screen {int dummy; } ;
struct format_ranges {int dummy; } ;


 int format_update_ranges (struct format_ranges*,struct screen*,scalar_t__,scalar_t__,scalar_t__) ;
 int screen_write_cursormove (struct screen_write_ctx*,scalar_t__,scalar_t__,int ) ;
 int screen_write_fast_copy (struct screen_write_ctx*,struct screen*,scalar_t__,int ,scalar_t__,int) ;

__attribute__((used)) static void
format_draw_put(struct screen_write_ctx *octx, u_int ocx, u_int ocy,
    struct screen *s, struct format_ranges *frs, u_int offset, u_int start,
    u_int width)
{




 screen_write_cursormove(octx, ocx + offset, ocy, 0);
 screen_write_fast_copy(octx, s, start, 0, width, 1);
 format_update_ranges(frs, s, offset, start, width);
}
