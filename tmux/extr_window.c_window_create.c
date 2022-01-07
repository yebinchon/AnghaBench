
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct window {int lastlayout; scalar_t__ id; int winlinks; scalar_t__ references; int options; void* sy; void* sx; int * layout_root; int * active; int panes; scalar_t__ flags; int name; } ;


 int RB_INSERT (int ,int *,struct window*) ;
 int TAILQ_INIT (int *) ;
 int global_w_options ;
 int next_window_id ;
 int options_create (int ) ;
 int window_update_activity (struct window*) ;
 int windows ;
 struct window* xcalloc (int,int) ;
 int xstrdup (char*) ;

struct window *
window_create(u_int sx, u_int sy)
{
 struct window *w;

 w = xcalloc(1, sizeof *w);
 w->name = xstrdup("");
 w->flags = 0;

 TAILQ_INIT(&w->panes);
 w->active = ((void*)0);

 w->lastlayout = -1;
 w->layout_root = ((void*)0);

 w->sx = sx;
 w->sy = sy;

 w->options = options_create(global_w_options);

 w->references = 0;
 TAILQ_INIT(&w->winlinks);

 w->id = next_window_id++;
 RB_INSERT(windows, &windows, w);

 window_update_activity(w);

 return (w);
}
