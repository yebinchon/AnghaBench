
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct screen {int * sel; } ;
struct window_copy_mode_data {scalar_t__ lineflag; struct screen screen; } ;


 scalar_t__ LINE_SEL_NONE ;
 int window_copy_set_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static int
window_copy_update_selection(struct window_mode_entry *wme, int may_redraw)
{
 struct window_copy_mode_data *data = wme->data;
 struct screen *s = &data->screen;

 if (s->sel == ((void*)0) && data->lineflag == LINE_SEL_NONE)
  return (0);
 return (window_copy_set_selection(wme, may_redraw));
}
