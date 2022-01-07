
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct main_state {int add_changes_untracked; int add_changes_staged; int add_changes_unstaged; } ;


 int LINE_STAT_STAGED ;
 int LINE_STAT_UNSTAGED ;
 int LINE_STAT_UNTRACKED ;
 char* NULL_ID ;
 scalar_t__ main_add_changes_commit (struct view*,int ,char const*,char*) ;

__attribute__((used)) static bool
main_add_changes(struct view *view, struct main_state *state, const char *parent)
{
 const char *staged_parent = parent;
 const char *unstaged_parent = NULL_ID;
 const char *untracked_parent = NULL_ID;

 if (!state->add_changes_staged) {
  staged_parent = ((void*)0);
  unstaged_parent = parent;
 }

 if (!state->add_changes_unstaged) {
  unstaged_parent = ((void*)0);
  if (!state->add_changes_staged)
   untracked_parent = parent;
 }

 if (!state->add_changes_untracked) {
  untracked_parent = ((void*)0);
 }

 return main_add_changes_commit(view, LINE_STAT_UNTRACKED, untracked_parent, "Untracked changes")
     && main_add_changes_commit(view, LINE_STAT_UNSTAGED, unstaged_parent, "Unstaged changes")
     && main_add_changes_commit(view, LINE_STAT_STAGED, staged_parent, "Staged changes");
}
