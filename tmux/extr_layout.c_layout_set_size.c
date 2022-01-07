
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct layout_cell {void* yoff; void* xoff; void* sy; void* sx; } ;



void
layout_set_size(struct layout_cell *lc, u_int sx, u_int sy, u_int xoff,
    u_int yoff)
{
 lc->sx = sx;
 lc->sy = sy;

 lc->xoff = xoff;
 lc->yoff = yoff;
}
