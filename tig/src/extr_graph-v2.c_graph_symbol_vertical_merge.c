
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_symbol {int continued_right; scalar_t__ parent_down; scalar_t__ continued_left; scalar_t__ continued_up; scalar_t__ merge; int matches_commit; scalar_t__ next_right; scalar_t__ continued_up_left; scalar_t__ shift_left; int below_commit; int new_column; scalar_t__ empty; } ;



__attribute__((used)) static bool
graph_symbol_vertical_merge(const struct graph_symbol *symbol)
{
 if (symbol->empty)
  return 0;

 if (!symbol->continued_up && !symbol->new_column && !symbol->below_commit)
  return 0;

 if (symbol->shift_left && symbol->continued_up_left)
  return 0;

 if (symbol->next_right)
  return 0;

 if (!symbol->matches_commit)
  return 0;

 if (symbol->merge && symbol->continued_up && symbol->continued_left && symbol->parent_down && !symbol->continued_right)
  return 1;

 return 0;
}
