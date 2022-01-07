
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct tty {void* sy; void* sx; } ;



void
tty_set_size(struct tty *tty, u_int sx, u_int sy)
{
 tty->sx = sx;
 tty->sy = sy;
}
