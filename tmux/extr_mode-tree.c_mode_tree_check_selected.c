
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_tree_data {int current; int height; int offset; } ;



__attribute__((used)) static void
mode_tree_check_selected(struct mode_tree_data *mtd)
{




 if (mtd->current > mtd->height - 1)
  mtd->offset = mtd->current - mtd->height + 1;
}
