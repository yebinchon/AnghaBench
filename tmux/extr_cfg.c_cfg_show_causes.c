
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct window_pane {int modes; } ;
struct window_mode_entry {int * mode; } ;
struct session {TYPE_2__* curw; } ;
struct TYPE_4__ {TYPE_1__* window; } ;
struct TYPE_3__ {struct window_pane* active; } ;


 struct window_mode_entry* TAILQ_FIRST (int *) ;
 int ***** cfg_causes ;
 scalar_t__ cfg_ncauses ;
 int free (int *****) ;
 int window_copy_add (struct window_pane*,char*,int ****) ;
 int window_pane_set_mode (struct window_pane*,int *,int *,int *) ;
 int window_view_mode ;

void
cfg_show_causes(struct session *s)
{
 struct window_pane *wp;
 struct window_mode_entry *wme;
 u_int i;

 if (s == ((void*)0) || cfg_ncauses == 0)
  return;
 wp = s->curw->window->active;

 wme = TAILQ_FIRST(&wp->modes);
 if (wme == ((void*)0) || wme->mode != &window_view_mode)
  window_pane_set_mode(wp, &window_view_mode, ((void*)0), ((void*)0));
 for (i = 0; i < cfg_ncauses; i++) {
  window_copy_add(wp, "%s", cfg_causes[i]);
  free(cfg_causes[i]);
 }

 free(cfg_causes);
 cfg_causes = ((void*)0);
 cfg_ncauses = 0;
}
