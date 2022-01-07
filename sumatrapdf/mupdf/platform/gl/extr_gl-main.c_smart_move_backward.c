
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_location ;
struct TYPE_2__ {int w; int h; } ;


 int canvas_h ;
 int canvas_w ;
 int ctx ;
 int currentpage ;
 int doc ;
 int eqloc (int ,int ) ;
 int fz_previous_page (int ,int ,int ) ;
 TYPE_1__ page_tex ;
 int scroll_x ;
 int scroll_y ;

__attribute__((used)) static void smart_move_backward(void)
{
 int slop_x = page_tex.w / 20;
 int slop_y = page_tex.h / 20;
 if (scroll_y <= slop_y)
 {
  if (scroll_x <= slop_x)
  {
   fz_location prev = fz_previous_page(ctx, doc, currentpage);
   if (!eqloc(currentpage, prev))
   {
    scroll_x = (page_tex.w <= canvas_w) ? 0 : page_tex.w - canvas_w;
    scroll_y = (page_tex.h <= canvas_h) ? 0 : page_tex.h - canvas_h;
    currentpage = prev;
   }
  }
  else
  {
   scroll_y = page_tex.h;
   scroll_x -= canvas_w * 9 / 10;
  }
 }
 else
 {
  scroll_y -= canvas_h * 9 / 10;
 }
}
