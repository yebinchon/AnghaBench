
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct graph_v2 {TYPE_1__ parents; scalar_t__ has_parents; } ;
struct graph {struct graph_v2* private; } ;


 int * graph_insert_column (struct graph_v2*,TYPE_1__*,int ,char const*) ;

__attribute__((used)) static bool
graph_add_parent(struct graph *graph_ref, const char *parent)
{
 struct graph_v2 *graph = graph_ref->private;

 if (graph->has_parents)
  return 1;
 return graph_insert_column(graph, &graph->parents, graph->parents.size, parent) != ((void*)0);
}
