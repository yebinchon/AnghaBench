
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float h; scalar_t__ w; } ;


 int auto_zoom_h () ;
 int auto_zoom_w () ;
 float canvas_h ;
 scalar_t__ canvas_w ;
 TYPE_1__ page_tex ;

__attribute__((used)) static void auto_zoom(void)
{
 float page_a = (float) page_tex.w / page_tex.h;
 float screen_a = (float) canvas_w / canvas_h;
 if (page_a > screen_a)
  auto_zoom_w();
 else
  auto_zoom_h();
}
