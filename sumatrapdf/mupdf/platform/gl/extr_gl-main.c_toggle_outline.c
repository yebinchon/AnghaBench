
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ w; scalar_t__ h; } ;


 scalar_t__ canvas_h ;
 scalar_t__ canvas_w ;
 scalar_t__ outline ;
 TYPE_1__ page_tex ;
 int showoutline ;
 int shrinkwrap () ;

__attribute__((used)) static void toggle_outline(void)
{
 if (outline)
 {
  showoutline = !showoutline;
  if (canvas_w == page_tex.w && canvas_h == page_tex.h)
   shrinkwrap();
 }
}
