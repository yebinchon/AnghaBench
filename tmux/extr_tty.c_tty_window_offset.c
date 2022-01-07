
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tty {int oflag; int osy; int osx; int ooy; int oox; } ;



int
tty_window_offset(struct tty *tty, u_int *ox, u_int *oy, u_int *sx, u_int *sy)
{
 *ox = tty->oox;
 *oy = tty->ooy;
 *sx = tty->osx;
 *sy = tty->osy;

 return (tty->oflag);
}
