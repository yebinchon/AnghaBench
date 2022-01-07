
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct screen {int dummy; } ;
struct window_pane {TYPE_1__* window; int * searchstr; struct screen base; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct window_copy_mode_data {int searchx; int searchy; int searcho; char jumpchar; int dragtimer; int modekeys; int screen; void* jumptype; int * searchmark; int * searchstr; void* searchtype; int lineflag; int cursordrag; } ;
struct TYPE_2__ {int options; } ;


 int CURSORDRAG_NONE ;
 int LINE_SEL_NONE ;
 void* WINDOW_COPY_OFF ;
 void* WINDOW_COPY_SEARCHUP ;
 int evtimer_set (int *,int ,struct window_mode_entry*) ;
 int options_get_number (int ,char*) ;
 int screen_init (int *,int ,int ,int ) ;
 int screen_size_x (struct screen*) ;
 int screen_size_y (struct screen*) ;
 int window_copy_scroll_timer ;
 struct window_copy_mode_data* xcalloc (int,int) ;
 int * xstrdup (int *) ;

__attribute__((used)) static struct window_copy_mode_data *
window_copy_common_init(struct window_mode_entry *wme)
{
 struct window_pane *wp = wme->wp;
 struct window_copy_mode_data *data;
 struct screen *base = &wp->base;

 wme->data = data = xcalloc(1, sizeof *data);

 data->cursordrag = CURSORDRAG_NONE;
 data->lineflag = LINE_SEL_NONE;

 if (wp->searchstr != ((void*)0)) {
  data->searchtype = WINDOW_COPY_SEARCHUP;
  data->searchstr = xstrdup(wp->searchstr);
 } else {
  data->searchtype = WINDOW_COPY_OFF;
  data->searchstr = ((void*)0);
 }
 data->searchmark = ((void*)0);
 data->searchx = data->searchy = data->searcho = -1;

 data->jumptype = WINDOW_COPY_OFF;
 data->jumpchar = '\0';

 screen_init(&data->screen, screen_size_x(base), screen_size_y(base), 0);
 data->modekeys = options_get_number(wp->window->options, "mode-keys");

 evtimer_set(&data->dragtimer, window_copy_scroll_timer, wme);

 return (data);
}
