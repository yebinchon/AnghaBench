
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph {int symbol_to_chtype; int symbol_to_utf8; int symbol_to_ascii; int foreach_symbol; int render_parents; int is_merge; int add_parent; int add_commit; int done_rendering; int done; struct graph_v2* private; } ;
struct graph_v2 {struct graph api; } ;


 struct graph_v2* calloc (int,int) ;
 int done_graph ;
 int done_graph_rendering ;
 int graph_add_commit ;
 int graph_add_parent ;
 int graph_foreach_symbol ;
 int graph_is_merge ;
 int graph_render_parents ;
 int graph_symbol_to_ascii ;
 int graph_symbol_to_chtype ;
 int graph_symbol_to_utf8 ;

struct graph *
init_graph_v2(void)
{
 struct graph_v2 *graph = calloc(1, sizeof(*graph));
 struct graph *api;

 if (!graph)
  return ((void*)0);

 api = &graph->api;
 api->private = graph;
 api->done = done_graph;
 api->done_rendering = done_graph_rendering;
 api->add_commit = graph_add_commit;
 api->add_parent = graph_add_parent;
 api->is_merge = graph_is_merge;
 api->render_parents = graph_render_parents;
 api->foreach_symbol = graph_foreach_symbol;
 api->symbol_to_ascii = graph_symbol_to_ascii;
 api->symbol_to_utf8 = graph_symbol_to_utf8;
 api->symbol_to_chtype = graph_symbol_to_chtype;

 return api;
}
