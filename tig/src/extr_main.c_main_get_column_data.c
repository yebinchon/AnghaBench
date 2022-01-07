
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column_data {int refs; int * graph_canvas; int graph; int commit_title; int reflog; int id; int * date; int author; } ;
struct view {struct main_state* private; } ;
struct main_state {int graph; scalar_t__ with_graph; int * reflog; scalar_t__ reflogs; } ;
struct line {int lineno; struct commit* data; } ;
struct commit {int graph; int title; int id; int time; int author; } ;


 int main_get_commit_refs (struct line const*,struct commit*) ;

bool
main_get_column_data(struct view *view, const struct line *line, struct view_column_data *column_data)
{
 struct main_state *state = view->private;
 struct commit *commit = line->data;

 column_data->author = commit->author;
 column_data->date = &commit->time;
 column_data->id = commit->id;
 if (state->reflogs)
  column_data->reflog = state->reflog[line->lineno - 1];

 column_data->commit_title = commit->title;
 if (state->with_graph) {
  column_data->graph = state->graph;
  column_data->graph_canvas = &commit->graph;
 }

 column_data->refs = main_get_commit_refs(line, commit);

 return 1;
}
