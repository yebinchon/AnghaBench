
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {struct main_state* private; } ;
struct main_state {int add_changes_untracked; int add_changes_unstaged; int add_changes_staged; scalar_t__ with_graph; struct graph* graph; } ;
struct graph {int (* add_commit ) (struct graph*,int *,int ,char const*,int) ;} ;
struct commit {int id; int graph; } ;


 scalar_t__ is_head_commit (int ) ;
 int main_add_changes (struct view*,struct main_state*,char const*) ;
 int string_copy_rev (int ,char const*) ;
 int stub1 (struct graph*,int *,int ,char const*,int) ;

__attribute__((used)) static void
main_register_commit(struct view *view, struct commit *commit, const char *ids, bool is_boundary)
{
 struct main_state *state = view->private;
 struct graph *graph = state->graph;

 string_copy_rev(commit->id, ids);


 if ((state->add_changes_untracked || state->add_changes_unstaged || state->add_changes_staged) && is_head_commit(commit->id)) {
  main_add_changes(view, state, ids);
  state->add_changes_untracked = state->add_changes_unstaged = state->add_changes_staged = 0;
 }

 if (state->with_graph)
  graph->add_commit(graph, &commit->graph, commit->id, ids, is_boundary);
}
