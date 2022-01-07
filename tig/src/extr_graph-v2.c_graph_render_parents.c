
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct graph_v2 {scalar_t__ position; TYPE_1__ parents; } ;
struct graph_canvas {int dummy; } ;
struct graph {struct graph_v2* private; } ;


 int graph_add_parent (struct graph*,int *) ;
 int graph_collapse (struct graph_v2*) ;
 int graph_commit_next_row (struct graph_v2*) ;
 int graph_expand (struct graph_v2*) ;
 int graph_generate_next_row (struct graph_v2*) ;
 int graph_generate_symbols (struct graph_v2*,struct graph_canvas*) ;

__attribute__((used)) static bool
graph_render_parents(struct graph *graph_ref, struct graph_canvas *canvas)
{
 struct graph_v2 *graph = graph_ref->private;

 if (graph->parents.size == 0 &&
     !graph_add_parent(graph_ref, ((void*)0)))
  return 0;

 if (!graph_expand(graph))
  return 0;

 graph_generate_next_row(graph);
 graph_generate_symbols(graph, canvas);
 graph_commit_next_row(graph);

 graph->parents.size = graph->position = 0;

 if (!graph_collapse(graph))
  return 0;

 return 1;
}
