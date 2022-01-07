
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int size; } ;
struct graph_v2 {TYPE_3__ next_row; TYPE_2__ row; TYPE_1__ prev_row; } ;


 scalar_t__ graph_needs_collapsing (struct graph_v2*) ;

__attribute__((used)) static bool
graph_collapse(struct graph_v2 *graph)
{
 while (graph_needs_collapsing(graph)) {
  graph->prev_row.size--;
  graph->row.size--;
  graph->next_row.size--;
 }

 return 1;
}
