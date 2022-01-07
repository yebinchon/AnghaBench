
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {scalar_t__ type; } ;


 scalar_t__ LINE_DIRECTORY ;
 int strcmp (int ,int ) ;
 int tree_path (struct line const*) ;

__attribute__((used)) static int
tree_compare_entry(const struct line *line1, const struct line *line2)
{
 if (line1->type != line2->type)
  return line1->type == LINE_DIRECTORY ? -1 : 1;
 return strcmp(tree_path(line1), tree_path(line2));
}
