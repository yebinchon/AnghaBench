
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int pos; scalar_t__ lines; } ;


 int OPEN_DEFAULT ;
 int OPEN_RELOAD ;
 int clear_position (int *) ;
 scalar_t__ grep_prompt () ;
 struct view grep_view ;
 scalar_t__ is_initial_view (struct view*) ;
 int open_view (struct view*,struct view*,int ) ;

void
open_grep_view(struct view *prev)
{
 struct view *view = &grep_view;
 bool in_grep_view = prev == view;

 if ((!prev && is_initial_view(view)) || (view->lines && !in_grep_view)) {
  open_view(prev, view, OPEN_DEFAULT);
 } else {
  if (grep_prompt()) {
   clear_position(&view->pos);
   open_view(prev, view, OPEN_RELOAD);
  }
 }
}
