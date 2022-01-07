
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {scalar_t__ lines; int prev_pos; struct view* prev; int win; scalar_t__ pipe; TYPE_1__* ops; scalar_t__ private; int watch; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int (* open ) (struct view*,int) ;scalar_t__ private_size; int (* done ) (struct view*) ;} ;


 int OPEN_REFRESH ;
 int OPEN_RELOAD ;
 int OPEN_SPLIT ;
 int SUCCESS ;
 int WATCH_EVENT_SWITCH_VIEW ;
 scalar_t__ calloc (int,scalar_t__) ;
 int clear_position (int *) ;
 int end_update (struct view*,int) ;
 int get_status_message (int) ;
 int maximize_view (struct view*,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int redraw_view (struct view*) ;
 int report (char*,int ) ;
 int report_clear () ;
 int restore_view_position (struct view*) ;
 int split_view (struct view*,struct view*) ;
 int stub1 (struct view*) ;
 int stub2 (struct view*,int) ;
 scalar_t__ view_can_refresh (struct view*) ;
 scalar_t__ view_is_displayed (struct view*) ;
 int view_no_refresh (struct view*,int) ;
 int watch_dirty (int *) ;
 scalar_t__ watch_update_single (int *,int ) ;
 int werase (int ) ;

void
load_view(struct view *view, struct view *prev, enum open_flags flags)
{
 bool refresh = !view_no_refresh(view, flags);


 if (prev && view != prev) {
  view->prev = prev;
 }

 if (!refresh && view_can_refresh(view) &&
     watch_update_single(&view->watch, WATCH_EVENT_SWITCH_VIEW)) {
  refresh = watch_dirty(&view->watch);
  if (refresh)
   flags |= OPEN_REFRESH;
 }

 if (refresh) {
  enum status_code code;

  if (view->pipe)
   end_update(view, 1);
  if (view->ops->private_size) {
   if (!view->private) {
    view->private = calloc(1, view->ops->private_size);
   } else {
    if (view->ops->done)
     view->ops->done(view);
    memset(view->private, 0, view->ops->private_size);
   }
  }

  code = view->ops->open(view, flags);
  if (code != SUCCESS) {
   report("%s", get_status_message(code));
   return;
  }
 }

 if (prev) {
  bool split = !!(flags & OPEN_SPLIT);

  if (split) {
   split_view(prev, view);
  } else {
   maximize_view(view, 0);
  }
 }

 restore_view_position(view);

 if (view->pipe && view->lines == 0) {


  werase(view->win);

  if (view->prev && !(flags & (OPEN_RELOAD | OPEN_REFRESH)))
   clear_position(&view->prev_pos);
  report_clear();
 } else if (view_is_displayed(view)) {
  redraw_view(view);
  report_clear();
 }
}
