
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int fd; int sx; int osx; int sy; int pipe_fd; int base; int status_screen; int * screen; void* saved_cy; void* saved_cx; int * saved_grid; int * pipe_event; scalar_t__ pipe_off; scalar_t__ yoff; scalar_t__ xoff; int * layout_cell; int modes; int * event; int * cwd; int * shell; int * argv; scalar_t__ argc; scalar_t__ id; int flags; int options; struct window* window; } ;
struct window {int options; } ;


 int HOST_NAME_MAX ;
 int PANE_STYLECHANGED ;
 int RB_INSERT (int ,int *,struct window_pane*) ;
 int TAILQ_INIT (int *) ;
 void* UINT_MAX ;
 int all_window_panes ;
 scalar_t__ gethostname (char*,int) ;
 int input_init (struct window_pane*) ;
 int next_window_pane_id ;
 int options_create (int ) ;
 int screen_init (int *,int,int,int) ;
 int screen_set_title (int *,char*) ;
 int window_pane_tree ;
 struct window_pane* xcalloc (int,int) ;

__attribute__((used)) static struct window_pane *
window_pane_create(struct window *w, u_int sx, u_int sy, u_int hlimit)
{
 struct window_pane *wp;
 char host[HOST_NAME_MAX + 1];

 wp = xcalloc(1, sizeof *wp);
 wp->window = w;
 wp->options = options_create(w->options);
 wp->flags = PANE_STYLECHANGED;

 wp->id = next_window_pane_id++;
 RB_INSERT(window_pane_tree, &all_window_panes, wp);

 wp->argc = 0;
 wp->argv = ((void*)0);
 wp->shell = ((void*)0);
 wp->cwd = ((void*)0);

 wp->fd = -1;
 wp->event = ((void*)0);

 TAILQ_INIT(&wp->modes);

 wp->layout_cell = ((void*)0);

 wp->xoff = 0;
 wp->yoff = 0;

 wp->sx = wp->osx = sx;
 wp->sy = wp->osx = sy;

 wp->pipe_fd = -1;
 wp->pipe_off = 0;
 wp->pipe_event = ((void*)0);

 wp->saved_grid = ((void*)0);
 wp->saved_cx = UINT_MAX;
 wp->saved_cy = UINT_MAX;

 screen_init(&wp->base, sx, sy, hlimit);
 wp->screen = &wp->base;

 screen_init(&wp->status_screen, 1, 1, 0);

 if (gethostname(host, sizeof host) == 0)
  screen_set_title(&wp->base, host);

 input_init(wp);

 return (wp);
}
