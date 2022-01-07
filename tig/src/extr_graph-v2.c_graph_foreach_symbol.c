
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_symbol {int color; scalar_t__ commit; } ;
struct graph_canvas {int size; struct graph_symbol* symbols; } ;
struct graph {int dummy; } ;
typedef scalar_t__ (* graph_symbol_iterator_fn ) (void*,struct graph const*,struct graph_symbol*,int,int) ;


 int GRAPH_COMMIT_COLOR ;

__attribute__((used)) static void
graph_foreach_symbol(const struct graph *graph, const struct graph_canvas *canvas,
       graph_symbol_iterator_fn fn, void *data)
{
 int i;

 for (i = 0; i < canvas->size; i++) {
  struct graph_symbol *symbol = &canvas->symbols[i];
  int color_id = symbol->commit ? GRAPH_COMMIT_COLOR : symbol->color;

  if (fn(data, graph, symbol, color_id, i == 0))
   break;
 }
}
