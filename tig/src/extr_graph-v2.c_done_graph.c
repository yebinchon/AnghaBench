
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id_map; } ;
struct graph_v2 {TYPE_1__ colors; } ;
struct graph {struct graph_v2* private; } ;


 int free (struct graph_v2*) ;
 int htab_delete (int ) ;
 int htab_empty (scalar_t__) ;
 scalar_t__ intern_string_htab ;

__attribute__((used)) static void
done_graph(struct graph *graph_ref)
{
 struct graph_v2 *graph = graph_ref->private;

 htab_delete(graph->colors.id_map);

 free(graph);

 if (intern_string_htab)
  htab_empty(intern_string_htab);
}
