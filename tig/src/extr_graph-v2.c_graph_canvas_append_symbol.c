
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_v2 {int dummy; } ;
struct graph_symbol {int dummy; } ;
struct graph_canvas {int size; struct graph_symbol* symbols; } ;


 scalar_t__ realloc_graph_symbols (struct graph_symbol**,int ,int) ;

__attribute__((used)) static void
graph_canvas_append_symbol(struct graph_v2 *graph, struct graph_canvas *canvas, struct graph_symbol *symbol)
{
 if (realloc_graph_symbols(&canvas->symbols, canvas->size, 1))
  canvas->symbols[canvas->size++] = *symbol;
}
