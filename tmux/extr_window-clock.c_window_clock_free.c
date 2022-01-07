
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {struct window_clock_mode_data* data; } ;
struct window_clock_mode_data {int screen; int timer; } ;


 int evtimer_del (int *) ;
 int free (struct window_clock_mode_data*) ;
 int screen_free (int *) ;

__attribute__((used)) static void
window_clock_free(struct window_mode_entry *wme)
{
 struct window_clock_mode_data *data = wme->data;

 evtimer_del(&data->timer);
 screen_free(&data->screen);
 free(data);
}
