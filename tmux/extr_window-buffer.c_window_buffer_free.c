
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct window_mode_entry {struct window_buffer_modedata* data; } ;
struct window_buffer_modedata {size_t item_size; struct window_buffer_modedata* command; struct window_buffer_modedata* format; struct window_buffer_modedata* item_list; int data; } ;


 int free (struct window_buffer_modedata*) ;
 int mode_tree_free (int ) ;
 int window_buffer_free_item (struct window_buffer_modedata) ;

__attribute__((used)) static void
window_buffer_free(struct window_mode_entry *wme)
{
 struct window_buffer_modedata *data = wme->data;
 u_int i;

 if (data == ((void*)0))
  return;

 mode_tree_free(data->data);

 for (i = 0; i < data->item_size; i++)
  window_buffer_free_item(data->item_list[i]);
 free(data->item_list);

 free(data->format);
 free(data->command);

 free(data);
}
