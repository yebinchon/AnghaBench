
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_tree_modedata {scalar_t__ item_size; struct window_tree_itemdata** item_list; } ;
struct window_tree_itemdata {int dummy; } ;


 struct window_tree_itemdata* xcalloc (int,int) ;
 struct window_tree_itemdata** xreallocarray (struct window_tree_itemdata**,scalar_t__,int) ;

__attribute__((used)) static struct window_tree_itemdata *
window_tree_add_item(struct window_tree_modedata *data)
{
 struct window_tree_itemdata *item;

 data->item_list = xreallocarray(data->item_list, data->item_size + 1,
     sizeof *data->item_list);
 item = data->item_list[data->item_size++] = xcalloc(1, sizeof *item);
 return (item);
}
