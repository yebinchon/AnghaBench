
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;


 int GrSetGCRegion (int ,int ) ;
 TYPE_1__ g_clip ;
 int g_gc ;
 int g_height ;
 int g_width ;

void ui_reset_clip(void)
{
  GrSetGCRegion(g_gc, 0);
  g_clip.x = 0;
  g_clip.y = 0;
  g_clip.width = g_width;
  g_clip.height = g_height;
}
