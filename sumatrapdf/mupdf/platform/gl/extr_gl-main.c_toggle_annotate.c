
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ w; scalar_t__ h; } ;


 scalar_t__ canvas_h ;
 scalar_t__ canvas_w ;
 TYPE_1__ page_tex ;
 scalar_t__ pdf ;
 int showannotate ;
 int shrinkwrap () ;

void toggle_annotate(void)
{
 if (pdf)
 {
  showannotate = !showannotate;
  if (canvas_w == page_tex.w && canvas_h == page_tex.h)
   shrinkwrap();
 }
}
