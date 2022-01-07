
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_tree_data {scalar_t__ line_size; int * line_list; } ;


 int free (int *) ;

__attribute__((used)) static void
mode_tree_clear_lines(struct mode_tree_data *mtd)
{
 free(mtd->line_list);
 mtd->line_list = ((void*)0);
 mtd->line_size = 0;
}
