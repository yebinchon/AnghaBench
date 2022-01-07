
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lineno; scalar_t__ offset; } ;
struct view {scalar_t__ height; TYPE_1__ pos; struct view* parent; } ;


 int OPEN_RELOAD ;
 int VIEW_FLEX_WIDTH ;
 int current_view ;
 struct view** display ;
 int displayed_views () ;
 int do_scroll_view (struct view*,int) ;
 int getmaxyx (int ,int,int) ;
 int load_view (struct view*,int *,int ) ;
 scalar_t__ opt_focus_child ;
 int opt_vertical_split ;
 int resize_display () ;
 int stdscr ;
 int update_view_title (struct view*) ;
 int vertical_split_is_enabled (int ,int,int) ;
 scalar_t__ view_has_flags (struct view*,int ) ;
 scalar_t__ view_is_displayed (struct view*) ;

void
split_view(struct view *prev, struct view *view)
{
 int height, width;
 bool vsplit;
 int nviews = displayed_views();

 getmaxyx(stdscr, height, width);
 vsplit = vertical_split_is_enabled(opt_vertical_split, height, width);

 display[1] = view;
 current_view = opt_focus_child ? 1 : 0;
 view->parent = prev;
 resize_display();

 if (prev->pos.lineno - prev->pos.offset >= prev->height) {

  int lines = prev->pos.lineno - prev->pos.offset - prev->height + 1;



  do_scroll_view(prev, lines);
 }

 if (view != prev && view_is_displayed(prev)) {

  update_view_title(prev);
 }

 if (view_has_flags(prev, VIEW_FLEX_WIDTH) && vsplit && nviews == 1)
  load_view(prev, ((void*)0), OPEN_RELOAD);
}
