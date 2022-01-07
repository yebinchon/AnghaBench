
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_symbol {scalar_t__ flanked; scalar_t__ merge; scalar_t__ parent_right; scalar_t__ shift_left; int below_commit; int new_column; int continued_up; int continued_down; scalar_t__ empty; } ;



__attribute__((used)) static bool
graph_symbol_cross_over(const struct graph_symbol *symbol)
{
 if (symbol->empty)
  return 0;

 if (!symbol->continued_down)
  return 0;

 if (!symbol->continued_up && !symbol->new_column && !symbol->below_commit)
  return 0;

 if (symbol->shift_left)
  return 0;

 if (symbol->parent_right && symbol->merge)
  return 1;

 if (symbol->flanked)
  return 1;

 return 0;
}
