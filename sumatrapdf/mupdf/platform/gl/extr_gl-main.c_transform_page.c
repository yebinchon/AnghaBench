
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int currentrotate ;
 int currentzoom ;
 int draw_page_bounds ;
 int draw_page_ctm ;
 int fz_transform_page (int ,int ,int ) ;
 int fz_transform_rect (int ,int ) ;
 int page_bounds ;

void transform_page(void)
{
 draw_page_ctm = fz_transform_page(page_bounds, currentzoom, currentrotate);
 draw_page_bounds = fz_transform_rect(page_bounds, draw_page_ctm);
}
