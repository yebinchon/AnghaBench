
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_symbol {scalar_t__ merge; scalar_t__ flanked; int parent_right; int continued_right; int continued_down; } ;



__attribute__((used)) static bool
graph_symbol_turn_down_cross_over(const struct graph_symbol *symbol)
{
 if (!symbol->continued_down)
  return 0;

 if (!symbol->continued_right)
  return 0;

 if (!symbol->parent_right && !symbol->flanked)
  return 0;

 if (symbol->flanked)
  return 1;

 if (symbol->merge)
  return 1;

 return 0;
}
