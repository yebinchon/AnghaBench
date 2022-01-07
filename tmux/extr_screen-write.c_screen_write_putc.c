
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct screen_write_ctx {int dummy; } ;
struct grid_cell {int data; } ;


 int memcpy (struct grid_cell*,struct grid_cell const*,int) ;
 int screen_write_cell (struct screen_write_ctx*,struct grid_cell*) ;
 int utf8_set (int *,int ) ;

void
screen_write_putc(struct screen_write_ctx *ctx, const struct grid_cell *gcp,
    u_char ch)
{
 struct grid_cell gc;

 memcpy(&gc, gcp, sizeof gc);

 utf8_set(&gc.data, ch);
 screen_write_cell(ctx, &gc);
}
