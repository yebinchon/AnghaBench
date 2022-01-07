
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_client_modedata {scalar_t__ item_size; struct window_client_itemdata** item_list; } ;
struct window_client_itemdata {int dummy; } ;


 struct window_client_itemdata* xcalloc (int,int) ;
 struct window_client_itemdata** xreallocarray (struct window_client_itemdata**,scalar_t__,int) ;

__attribute__((used)) static struct window_client_itemdata *
window_client_add_item(struct window_client_modedata *data)
{
 struct window_client_itemdata *item;

 data->item_list = xreallocarray(data->item_list, data->item_size + 1,
     sizeof *data->item_list);
 item = data->item_list[data->item_size++] = xcalloc(1, sizeof *item);
 return (item);
}
