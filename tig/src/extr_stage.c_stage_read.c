
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__ parent; int lines; struct stage_state* private; } ;
struct stage_state {int diff; } ;
struct buffer {int * data; } ;


 int LINE_DEFAULT ;
 scalar_t__ LINE_STAT_UNTRACKED ;
 scalar_t__ diff_common_read (struct view*,int *,int *) ;
 int diff_done_highlight (int *) ;
 int diff_restore_line (struct view*,int *) ;
 int maximize_view (scalar_t__,int) ;
 int opt_diff_highlight ;
 int pager_common_read (struct view*,int *,int ,int *) ;
 int pager_read (struct view*,struct buffer*,int) ;
 int report (char*,int ) ;
 scalar_t__ stage_line_type ;

__attribute__((used)) static bool
stage_read(struct view *view, struct buffer *buf, bool force_stop)
{
 struct stage_state *state = view->private;

 if (stage_line_type == LINE_STAT_UNTRACKED)
  return pager_common_read(view, buf ? buf->data : ((void*)0), LINE_DEFAULT, ((void*)0));

 if (!buf) {
  if (!diff_done_highlight(&state->diff)) {
   report("Failed run the diff-highlight program: %s", opt_diff_highlight);
   return 1;
  }
 }

 if (!buf && !view->lines && view->parent) {
  maximize_view(view->parent, 1);
  return 1;
 }

 if (!buf)
  diff_restore_line(view, &state->diff);

 if (buf && diff_common_read(view, buf->data, &state->diff))
  return 1;

 return pager_read(view, buf, force_stop);
}
