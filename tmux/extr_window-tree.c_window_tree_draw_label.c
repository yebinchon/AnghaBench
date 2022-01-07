
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct screen_write_ctx {int dummy; } ;
struct grid_cell {int dummy; } ;


 int screen_write_box (struct screen_write_ctx*,size_t,int) ;
 int screen_write_cursormove (struct screen_write_ctx*,int,int,int ) ;
 int screen_write_puts (struct screen_write_ctx*,struct grid_cell const*,char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
window_tree_draw_label(struct screen_write_ctx *ctx, u_int px, u_int py,
    u_int sx, u_int sy, const struct grid_cell *gc, const char *label)
{
 size_t len;
 u_int ox, oy;

 len = strlen(label);
 if (sx == 0 || sy == 1 || len > sx)
  return;
 ox = (sx - len + 1) / 2;
 oy = (sy + 1) / 2;

 if (ox > 1 && ox + len < sx - 1 && sy >= 3) {
  screen_write_cursormove(ctx, px + ox - 1, py + oy - 1, 0);
  screen_write_box(ctx, len + 2, 3);
 }
 screen_write_cursormove(ctx, px + ox, py + oy, 0);
 screen_write_puts(ctx, gc, "%s", label);
}
