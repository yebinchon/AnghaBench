
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ fz_point ;


 int clear_future () ;
 int ctx ;
 int currentpage ;
 int doc ;
 int draw_page_ctm ;
 int fz_clamp_location (int ,int ,int ) ;
 int fz_location_from_page_number (int ,int ,int) ;
 TYPE_1__ fz_transform_point_xy (float,float,int ) ;
 int push_history () ;
 int scroll_x ;
 int scroll_y ;

__attribute__((used)) static void jump_to_page_xy(int newpage, float x, float y)
{
 fz_point p = fz_transform_point_xy(x, y, draw_page_ctm);
 clear_future();
 push_history();
 currentpage = fz_location_from_page_number(ctx, doc, newpage);
 currentpage = fz_clamp_location(ctx, doc, currentpage);
 scroll_x = p.x;
 scroll_y = p.y;
 push_history();
}
