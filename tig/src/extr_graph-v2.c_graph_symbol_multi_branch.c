
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_symbol {scalar_t__ shift_left; scalar_t__ matches_commit; scalar_t__ below_commit; scalar_t__ new_column; scalar_t__ continued_up; scalar_t__ below_shift; int continued_right; scalar_t__ continued_down; } ;



__attribute__((used)) static bool
graph_symbol_multi_branch(const struct graph_symbol *symbol)
{
 if (symbol->continued_down)
  return 0;

 if (!symbol->continued_right)
  return 0;

 if (symbol->below_shift)
  return 0;

 if (symbol->continued_up || symbol->new_column || symbol->below_commit) {
  if (symbol->matches_commit)
   return 1;

  if (symbol->shift_left)
   return 1;
 }

 return 0;
}
