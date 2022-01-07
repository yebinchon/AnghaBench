
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct window_mode_entry {struct window_client_modedata* data; } ;
struct window_client_modedata {size_t item_size; struct window_client_modedata* command; struct window_client_modedata* format; struct window_client_modedata* item_list; int data; } ;


 int free (struct window_client_modedata*) ;
 int mode_tree_free (int ) ;
 int window_client_free_item (struct window_client_modedata) ;

__attribute__((used)) static void
window_client_free(struct window_mode_entry *wme)
{
 struct window_client_modedata *data = wme->data;
 u_int i;

 if (data == ((void*)0))
  return;

 mode_tree_free(data->data);

 for (i = 0; i < data->item_size; i++)
  window_client_free_item(data->item_list[i]);
 free(data->item_list);

 free(data->format);
 free(data->command);

 free(data);
}
