
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_symbol {int continued_right; int parent_right; int parent_down; } ;



__attribute__((used)) static bool
graph_symbol_multi_merge(const struct graph_symbol *symbol)
{
 if (!symbol->parent_down)
  return 0;

 if (!symbol->parent_right && !symbol->continued_right)
  return 0;

 return 1;
}
