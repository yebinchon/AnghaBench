
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
 int fz_next_page (int ,int ,int ) ;
 TYPE_1__ page_tex ;
 int scroll_x ;
 int scroll_y ;

__attribute__((used)) static void smart_move_forward(void)
{
 int slop_x = page_tex.w / 20;
 int slop_y = page_tex.h / 20;
 if (scroll_y + canvas_h >= page_tex.h - slop_y)
 {
  if (scroll_x + canvas_w >= page_tex.w - slop_x)
  {
   fz_location next = fz_next_page(ctx, doc, currentpage);
   if (!eqloc(currentpage, next))
   {
    scroll_x = 0;
    scroll_y = 0;
    currentpage = next;
   }
  }
  else
  {
   scroll_y = 0;
   scroll_x += canvas_w * 9 / 10;
  }
 }
 else
 {
  scroll_y += canvas_h * 9 / 10;
 }
}
