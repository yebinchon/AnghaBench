
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; scalar_t__ y1; } ;
typedef TYPE_1__ fz_irect ;
struct TYPE_5__ {scalar_t__ x; scalar_t__ y; } ;


 TYPE_3__ ui ;

int ui_mouse_inside(fz_irect area)
{
 if (ui.x >= area.x0 && ui.x < area.x1 && ui.y >= area.y0 && ui.y < area.y1)
  return 1;
 return 0;
}
