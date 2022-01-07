
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mousex ;
 int mousey ;

int contains_mouse(int x, int y, int cx, int cy)
{
  if (mousex + 32 >= x &&
      mousey + 32 >= y &&
      mousex <= x + cx &&
      mousey <= y + cy)
    return 1;
  else
    return 0;
}
