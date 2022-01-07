
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
struct mark {TYPE_1__ scroll; int loc; } ;


 int currentpage ;
 int draw_page_ctm ;
 TYPE_1__ fz_transform_point (TYPE_1__,int ) ;
 int scroll_x ;
 int scroll_y ;

__attribute__((used)) static void restore_mark(struct mark mark)
{
 currentpage = mark.loc;
 mark.scroll = fz_transform_point(mark.scroll, draw_page_ctm);
 scroll_x = mark.scroll.x;
 scroll_y = mark.scroll.y;
}
