
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mark {int scroll; int loc; } ;


 int currentpage ;
 int fz_transform_point_xy (int ,int ,int ) ;
 int scroll_x ;
 int scroll_y ;
 int view_page_inv_ctm ;

__attribute__((used)) static struct mark save_mark()
{
 struct mark mark;
 mark.loc = currentpage;
 mark.scroll = fz_transform_point_xy(scroll_x, scroll_y, view_page_inv_ctm);
 return mark;
}
