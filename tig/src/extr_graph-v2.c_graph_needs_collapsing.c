
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int * columns; } ;
struct graph_v2 {TYPE_1__ row; } ;


 int graph_column_has_commit (int *) ;

__attribute__((used)) static bool
graph_needs_collapsing(struct graph_v2 *graph)
{
 return graph->row.size > 1
     && !graph_column_has_commit(&graph->row.columns[graph->row.size - 1]);
}
