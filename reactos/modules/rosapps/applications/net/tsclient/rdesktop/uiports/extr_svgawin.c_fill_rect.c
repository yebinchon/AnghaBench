
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int accel_fill_rect (int,int,int,int,int) ;
 int set_pixel (int,int,int,int) ;
 scalar_t__ warp_coords (int*,int*,int*,int*,int *,int *) ;

void fill_rect(int x, int y, int cx, int cy, int colour, int opcode)
{
  int i;
  int j;

  if (warp_coords(&x, &y, &cx, &cy, ((void*)0), ((void*)0)))
  {
    if (opcode == 0xc)
      accel_fill_rect(x, y, cx, cy, colour);
    else if (opcode == 0xf)
      accel_fill_rect(x, y, cx, cy, -1);
    else if (opcode == 0x0)
      accel_fill_rect(x, y, cx, cy, 0);
    else
    {
      for (i = 0; i < cy; i++)
        for (j = 0; j < cx; j++)
          set_pixel(x + j, y + i, colour, opcode);
    }
  }
}
