
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int pipe; } ;
struct view {struct io io; int dir; } ;
struct diff_state {int highlight; struct io view_io; } ;
struct app_external {char** argv; int env; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int IO_RP ;
 int SUCCESS ;
 struct app_external* app_diff_highlight_load (int *) ;
 int error (char*,int *) ;
 int io_exec (struct io*,int ,int ,int ,char**,int ) ;
 int * opt_diff_highlight ;

enum status_code
diff_init_highlight(struct view *view, struct diff_state *state)
{
 if (!opt_diff_highlight || !*opt_diff_highlight)
  return SUCCESS;

 struct app_external *app = app_diff_highlight_load(opt_diff_highlight);
 struct io io;







 if (!*app->argv)
  app->argv[0] = "";

 if (!io_exec(&io, IO_RP, view->dir, app->env, app->argv, view->io.pipe))
  return error("Failed to run %s", opt_diff_highlight);

 state->view_io = view->io;
 view->io = io;
 state->highlight = 1;

 return SUCCESS;
}
