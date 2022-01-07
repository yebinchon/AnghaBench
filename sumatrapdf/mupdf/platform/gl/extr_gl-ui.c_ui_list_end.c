
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;


 int ui_tree_end (struct list*) ;

void ui_list_end(struct list *list)
{
 ui_tree_end(list);
}
