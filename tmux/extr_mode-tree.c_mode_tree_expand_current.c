
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mode_tree_data {size_t current; TYPE_2__* line_list; } ;
struct TYPE_4__ {TYPE_1__* item; } ;
struct TYPE_3__ {int expanded; } ;


 int mode_tree_build (struct mode_tree_data*) ;

void
mode_tree_expand_current(struct mode_tree_data *mtd)
{
 if (!mtd->line_list[mtd->current].item->expanded) {
  mtd->line_list[mtd->current].item->expanded = 1;
  mode_tree_build(mtd);
 }
}
