
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {struct window* name; int options; int offset_timer; int alerts_timer; int name_event; struct window* old_layout; int * saved_layout_root; int * layout_root; int references; int id; } ;


 int RB_REMOVE (int ,int *,struct window*) ;
 int event_del (int *) ;
 scalar_t__ event_initialized (int *) ;
 int evtimer_del (int *) ;
 int free (struct window*) ;
 int layout_free_cell (int *) ;
 int log_debug (char*,int ,int ) ;
 int options_free (int ) ;
 int window_destroy_panes (struct window*) ;
 int windows ;

__attribute__((used)) static void
window_destroy(struct window *w)
{
 log_debug("window @%u destroyed (%d references)", w->id, w->references);

 RB_REMOVE(windows, &windows, w);

 if (w->layout_root != ((void*)0))
  layout_free_cell(w->layout_root);
 if (w->saved_layout_root != ((void*)0))
  layout_free_cell(w->saved_layout_root);
 free(w->old_layout);

 window_destroy_panes(w);

 if (event_initialized(&w->name_event))
  evtimer_del(&w->name_event);

 if (event_initialized(&w->alerts_timer))
  evtimer_del(&w->alerts_timer);
 if (event_initialized(&w->offset_timer))
  event_del(&w->offset_timer);

 options_free(w->options);

 free(w->name);
 free(w);
}
