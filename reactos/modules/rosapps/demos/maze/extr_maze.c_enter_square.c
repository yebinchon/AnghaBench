
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dir; scalar_t__ y; scalar_t__ x; } ;
typedef int HDC ;
typedef int HBRUSH ;


 int draw_solid_square (int,int,int,int ,int ) ;
 TYPE_1__* path ;

__attribute__((used)) static void
enter_square(int n, HDC hDC, HBRUSH hBrush)
{
  draw_solid_square( (int)path[n].x, (int)path[n].y,
      (int)path[n].dir, hDC, hBrush);

  path[n+1].dir = -1;
  switch (path[n].dir) {
  case 0: path[n+1].x = path[n].x;
    path[n+1].y = path[n].y - 1;
    break;
  case 1: path[n+1].x = path[n].x + 1;
    path[n+1].y = path[n].y;
    break;
  case 2: path[n+1].x = path[n].x;
    path[n+1].y = path[n].y + 1;
    break;
  case 3: path[n+1].x = path[n].x - 1;
    path[n+1].y = path[n].y;
    break;
  }
}
