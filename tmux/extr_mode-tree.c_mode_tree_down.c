
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_tree_data {int current; int line_size; int offset; int height; } ;



void
mode_tree_down(struct mode_tree_data *mtd, int wrap)
{
 if (mtd->current == mtd->line_size - 1) {
  if (wrap) {
   mtd->current = 0;
   mtd->offset = 0;
  }
 } else {
  mtd->current++;
  if (mtd->current > mtd->offset + mtd->height - 1)
   mtd->offset++;
 }
}
