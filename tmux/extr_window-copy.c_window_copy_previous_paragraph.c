
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; int backing; } ;


 scalar_t__ screen_hsize (int ) ;
 scalar_t__ window_copy_find_length (struct window_mode_entry*,scalar_t__) ;
 int window_copy_scroll_to (struct window_mode_entry*,int ,scalar_t__) ;

__attribute__((used)) static void
window_copy_previous_paragraph(struct window_mode_entry *wme)
{
 struct window_copy_mode_data *data = wme->data;
 u_int oy;

 oy = screen_hsize(data->backing) + data->cy - data->oy;

 while (oy > 0 && window_copy_find_length(wme, oy) == 0)
  oy--;

 while (oy > 0 && window_copy_find_length(wme, oy) > 0)
  oy--;

 window_copy_scroll_to(wme, 0, oy);
}
