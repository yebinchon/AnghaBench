
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__ height; int width; } ;


 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ MIN_VIEW_HEIGHT ;
 scalar_t__ apply_step (int ,scalar_t__) ;
 int opt_split_view_height ;

__attribute__((used)) static void
apply_horizontal_split(struct view *base, struct view *view)
{
 view->width = base->width;
 view->height = apply_step(opt_split_view_height, base->height);
 view->height = MAX(view->height, MIN_VIEW_HEIGHT);
 view->height = MIN(view->height, base->height - MIN_VIEW_HEIGHT);
 base->height -= view->height;
}
