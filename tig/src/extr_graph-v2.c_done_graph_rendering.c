
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int columns; } ;
struct TYPE_7__ {int columns; } ;
struct TYPE_6__ {int columns; } ;
struct TYPE_5__ {int columns; } ;
struct graph_v2 {TYPE_4__ parents; TYPE_3__ next_row; TYPE_2__ row; TYPE_1__ prev_row; } ;
struct graph {struct graph_v2* private; } ;


 int free (int ) ;

__attribute__((used)) static void
done_graph_rendering(struct graph *graph_ref)
{
 struct graph_v2 *graph = graph_ref->private;

 free(graph->prev_row.columns);
 free(graph->row.columns);
 free(graph->next_row.columns);
 free(graph->parents.columns);
}
