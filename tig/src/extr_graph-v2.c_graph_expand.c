
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct graph_v2 {TYPE_1__ next_row; TYPE_1__ row; TYPE_1__ prev_row; } ;


 int graph_insert_column (struct graph_v2*,TYPE_1__*,int ,int *) ;
 scalar_t__ graph_needs_expansion (struct graph_v2*) ;

__attribute__((used)) static bool
graph_expand(struct graph_v2 *graph)
{
 while (graph_needs_expansion(graph)) {
  if (!graph_insert_column(graph, &graph->prev_row, graph->prev_row.size, ((void*)0)))
   return 0;

  if (!graph_insert_column(graph, &graph->row, graph->row.size, ((void*)0)))
   return 0;

  if (!graph_insert_column(graph, &graph->next_row, graph->next_row.size, ((void*)0)))
   return 0;
 }

 return 1;
}
