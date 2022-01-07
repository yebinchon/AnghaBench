
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX (int,scalar_t__) ;
 int MIN (int,scalar_t__) ;
 scalar_t__ MIN_VIEW_WIDTH ;
 int apply_step (int ,int) ;
 int opt_split_view_width ;

int
apply_vertical_split(int base_width)
{
 int width = apply_step(opt_split_view_width, base_width);

 width = MAX(width, MIN_VIEW_WIDTH);
 width = MIN(width, base_width - MIN_VIEW_WIDTH);

 return width;
}
