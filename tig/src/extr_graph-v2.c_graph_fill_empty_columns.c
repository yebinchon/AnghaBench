
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_row {int size; int * columns; } ;
struct graph_v2 {struct graph_row next_row; } ;


 int graph_column_has_commit (int *) ;

__attribute__((used)) static void
graph_fill_empty_columns(struct graph_v2 *graph)
{
 struct graph_row *row = &graph->next_row;
 int i;

 for (i = row->size - 2; i >= 0; i--) {
  if (!graph_column_has_commit(&row->columns[i])) {
   row->columns[i] = row->columns[i + 1];
  }
 }
}
