
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_v2 {int id; int next_row; } ;


 int graph_fill_empty_columns (struct graph_v2*) ;
 int graph_insert_parents (struct graph_v2*) ;
 int graph_remove_collapsed_columns (struct graph_v2*) ;
 int graph_row_clear_commit (int *,int ) ;

__attribute__((used)) static void
graph_generate_next_row(struct graph_v2 *graph)
{
 graph_row_clear_commit(&graph->next_row, graph->id);
 graph_insert_parents(graph);
 graph_remove_collapsed_columns(graph);
 graph_fill_empty_columns(graph);
}
