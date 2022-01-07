
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window {int name; int id; TYPE_1__* active; int name_event; int name_time; int options; } ;
struct timeval {int tv_usec; } ;
struct TYPE_2__ {int flags; } ;


 int PANE_CHANGED ;
 int event_add (int *,struct timeval*) ;
 scalar_t__ event_initialized (int *) ;
 int evtimer_del (int *) ;
 int evtimer_pending (int *,int *) ;
 int evtimer_set (int *,int ,struct window*) ;
 char* format_window_name (struct window*) ;
 int free (char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int log_debug (char*,int ,...) ;
 int memcpy (int *,struct timeval*,int) ;
 int name_time_callback ;
 int name_time_expired (struct window*,struct timeval*) ;
 int options_get_number (int ,char*) ;
 int server_status_window (struct window*) ;
 scalar_t__ strcmp (char*,int) ;
 int timerclear (struct timeval*) ;
 int window_set_name (struct window*,char*) ;

void
check_window_name(struct window *w)
{
 struct timeval tv, next;
 char *name;
 int left;

 if (w->active == ((void*)0))
  return;

 if (!options_get_number(w->options, "automatic-rename"))
  return;

 if (~w->active->flags & PANE_CHANGED) {
  log_debug("@%u active pane not changed", w->id);
  return;
 }
 log_debug("@%u active pane changed", w->id);

 gettimeofday(&tv, ((void*)0));
 left = name_time_expired(w, &tv);
 if (left != 0) {
  if (!event_initialized(&w->name_event))
   evtimer_set(&w->name_event, name_time_callback, w);
  if (!evtimer_pending(&w->name_event, ((void*)0))) {
   log_debug("@%u name timer queued (%d left)", w->id,
       left);
   timerclear(&next);
   next.tv_usec = left;
   event_add(&w->name_event, &next);
  } else {
   log_debug("@%u name timer already queued (%d left)",
       w->id, left);
  }
  return;
 }
 memcpy(&w->name_time, &tv, sizeof w->name_time);
 if (event_initialized(&w->name_event))
  evtimer_del(&w->name_event);

 w->active->flags &= ~PANE_CHANGED;

 name = format_window_name(w);
 if (strcmp(name, w->name) != 0) {
  log_debug("@%u new name %s (was %s)", w->id, name, w->name);
  window_set_name(w, name);
  server_status_window(w);
 } else
  log_debug("@%u name not changed (still %s)", w->id, w->name);

 free(name);
}
