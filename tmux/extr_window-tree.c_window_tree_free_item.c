
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_tree_itemdata {int dummy; } ;


 int free (struct window_tree_itemdata*) ;

__attribute__((used)) static void
window_tree_free_item(struct window_tree_itemdata *item)
{
 free(item);
}
