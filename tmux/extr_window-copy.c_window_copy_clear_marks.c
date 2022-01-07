
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int * searchmark; } ;


 int free (int *) ;

__attribute__((used)) static void
window_copy_clear_marks(struct window_mode_entry *wme)
{
 struct window_copy_mode_data *data = wme->data;

 free(data->searchmark);
 data->searchmark = ((void*)0);
}
