
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int cursordrag; scalar_t__ sely; scalar_t__ endsely; int selx; int endselx; scalar_t__ oy; scalar_t__ cy; int backing; int cx; } ;


 int CURSORDRAG_ENDSEL ;
 scalar_t__ screen_hsize (int ) ;
 int window_copy_set_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_start_selection(struct window_mode_entry *wme)
{
 struct window_copy_mode_data *data = wme->data;

 data->selx = data->cx;
 data->sely = screen_hsize(data->backing) + data->cy - data->oy;

 data->endselx = data->selx;
 data->endsely = data->sely;

 data->cursordrag = CURSORDRAG_ENDSEL;

 window_copy_set_selection(wme, 1);
}
