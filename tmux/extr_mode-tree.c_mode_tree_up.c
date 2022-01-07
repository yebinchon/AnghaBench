
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_tree_data {scalar_t__ current; scalar_t__ line_size; scalar_t__ height; scalar_t__ offset; } ;



__attribute__((used)) static void
mode_tree_up(struct mode_tree_data *mtd, int wrap)
{
 if (mtd->current == 0) {
  if (wrap) {
   mtd->current = mtd->line_size - 1;
   if (mtd->line_size >= mtd->height)
    mtd->offset = mtd->line_size - mtd->height;
  }
 } else {
  mtd->current--;
  if (mtd->current < mtd->offset)
   mtd->offset--;
 }
}
