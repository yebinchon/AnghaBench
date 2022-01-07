
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_symbol {int below_commit; int continued_up_left; scalar_t__ continued_up; int continued_right; int parent_right; scalar_t__ continued_down; scalar_t__ shift_left; int next_right; } ;



__attribute__((used)) static bool
graph_symbol_horizontal_bar(const struct graph_symbol *symbol)
{
 if (!symbol->next_right)
  return 0;

 if (symbol->shift_left)
  return 1;

 if (symbol->continued_down)
  return 0;

 if (!symbol->parent_right && !symbol->continued_right)
  return 0;

 if ((symbol->continued_up && !symbol->continued_up_left))
  return 0;

 if (!symbol->below_commit)
  return 1;

 return 0;
}
