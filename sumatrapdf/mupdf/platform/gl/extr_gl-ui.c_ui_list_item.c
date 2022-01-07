
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;


 int ui_tree_item (struct list*,void const*,char const*,int,int ,int ,int *) ;

int ui_list_item(struct list *list, const void *id, const char *label, int selected)
{
 return ui_tree_item(list, id, label, selected, 0, 0, ((void*)0));
}
