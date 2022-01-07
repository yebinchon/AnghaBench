
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct grid_cell {int us; } ;
struct tty {struct grid_cell cell; } ;


 int COLOUR_FLAG_RGB ;
 int TTYC_SETULC ;
 int colour_split_rgb (int,int*,int*,int*) ;
 int tty_putcode1 (struct tty*,int ,int) ;

__attribute__((used)) static void
tty_colours_us(struct tty *tty, const struct grid_cell *gc)
{
 struct grid_cell *tc = &tty->cell;
 u_int c;
 u_char r, g, b;


 if (~gc->us & COLOUR_FLAG_RGB)
  return;





 colour_split_rgb(gc->us, &r, &g, &b);
 c = (65536 * r) + (256 * g) + b;


 tty_putcode1(tty, TTYC_SETULC, c);


 tc->us = gc->us;
}
