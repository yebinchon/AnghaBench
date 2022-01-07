
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* state; int x; unsigned int y; } ;
typedef TYPE_1__ fz_arc4 ;



__attribute__((used)) static unsigned char
fz_arc4_next(fz_arc4 *arc4)
{
 unsigned int x;
 unsigned int y;
 unsigned int sx, sy;
 unsigned char *state;

 state = arc4->state;

 x = (arc4->x + 1) & 0xff;
 sx = state[x];
 y = (sx + arc4->y) & 0xff;
 sy = state[y];

 arc4->x = x;
 arc4->y = y;

 state[y] = sx;
 state[x] = sy;

 return state[(sx + sy) & 0xff];
}
