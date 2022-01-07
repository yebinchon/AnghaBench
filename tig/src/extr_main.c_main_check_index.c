
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int watch; } ;
struct main_state {int add_changes_untracked; int add_changes_unstaged; int add_changes_staged; } ;
struct index_diff {int staged; int unstaged; int untracked; } ;


 int WATCH_INDEX_STAGED_NO ;
 int WATCH_INDEX_STAGED_YES ;
 int WATCH_INDEX_UNSTAGED_NO ;
 int WATCH_INDEX_UNSTAGED_YES ;
 int WATCH_INDEX_UNTRACKED_NO ;
 int WATCH_INDEX_UNTRACKED_YES ;
 int index_diff (struct index_diff*,int ,int) ;
 int opt_show_untracked ;
 int watch_apply (int *,int ) ;

__attribute__((used)) static bool
main_check_index(struct view *view, struct main_state *state)
{
 struct index_diff diff;

 if (!index_diff(&diff, opt_show_untracked, 0))
  return 0;

 if (!diff.untracked) {
  watch_apply(&view->watch, WATCH_INDEX_UNTRACKED_NO);
 } else {
  watch_apply(&view->watch, WATCH_INDEX_UNTRACKED_YES);
  state->add_changes_untracked = 1;
 }

 if (!diff.unstaged) {
  watch_apply(&view->watch, WATCH_INDEX_UNSTAGED_NO);
 } else {
  watch_apply(&view->watch, WATCH_INDEX_UNSTAGED_YES);
  state->add_changes_unstaged = 1;
 }

 if (!diff.staged) {
  watch_apply(&view->watch, WATCH_INDEX_STAGED_NO);
 } else {
  watch_apply(&view->watch, WATCH_INDEX_STAGED_YES);
  state->add_changes_staged = 1;
 }

 return 1;
}
