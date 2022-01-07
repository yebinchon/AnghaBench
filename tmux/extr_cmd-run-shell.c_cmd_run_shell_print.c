
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int modes; } ;
struct window_mode_entry {int * mode; } ;
struct job {int dummy; } ;
struct cmd_run_shell_data {int wp_id; int * item; } ;
struct cmd_find_state {struct window_pane* wp; } ;


 struct window_mode_entry* TAILQ_FIRST (int *) ;
 scalar_t__ cmd_find_from_nothing (struct cmd_find_state*,int ) ;
 int cmdq_print (int *,char*,char const*) ;
 struct cmd_run_shell_data* job_get_data (struct job*) ;
 int window_copy_add (struct window_pane*,char*,char const*) ;
 struct window_pane* window_pane_find_by_id (int) ;
 int window_pane_set_mode (struct window_pane*,int *,int *,int *) ;
 int window_view_mode ;

__attribute__((used)) static void
cmd_run_shell_print(struct job *job, const char *msg)
{
 struct cmd_run_shell_data *cdata = job_get_data(job);
 struct window_pane *wp = ((void*)0);
 struct cmd_find_state fs;
 struct window_mode_entry *wme;

 if (cdata->wp_id != -1)
  wp = window_pane_find_by_id(cdata->wp_id);
 if (wp == ((void*)0)) {
  if (cdata->item != ((void*)0)) {
   cmdq_print(cdata->item, "%s", msg);
   return;
  }
  if (cmd_find_from_nothing(&fs, 0) != 0)
   return;
  wp = fs.wp;
  if (wp == ((void*)0))
   return;
 }

 wme = TAILQ_FIRST(&wp->modes);
 if (wme == ((void*)0) || wme->mode != &window_view_mode)
  window_pane_set_mode(wp, &window_view_mode, ((void*)0), ((void*)0));
 window_copy_add(wp, "%s", msg);
}
