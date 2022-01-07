
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_tree_data {scalar_t__ references; } ;


 int free (struct mode_tree_data*) ;

__attribute__((used)) static void
mode_tree_remove_ref(struct mode_tree_data *mtd)
{
 if (--mtd->references == 0)
  free(mtd);
}
