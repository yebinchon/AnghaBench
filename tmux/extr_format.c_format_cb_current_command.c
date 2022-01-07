
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int * shell; int argv; int argc; int tty; int fd; } ;
struct format_tree {struct window_pane* wp; } ;
struct format_entry {int value; } ;


 char* cmd_stringify_argv (int ,int ) ;
 int free (char*) ;
 char* osdep_get_name (int ,int ) ;
 int parse_window_name (char*) ;
 char* xstrdup (int *) ;

__attribute__((used)) static void
format_cb_current_command(struct format_tree *ft, struct format_entry *fe)
{
 struct window_pane *wp = ft->wp;
 char *cmd;

 if (wp == ((void*)0) || wp->shell == ((void*)0))
  return;

 cmd = osdep_get_name(wp->fd, wp->tty);
 if (cmd == ((void*)0) || *cmd == '\0') {
  free(cmd);
  cmd = cmd_stringify_argv(wp->argc, wp->argv);
  if (cmd == ((void*)0) || *cmd == '\0') {
   free(cmd);
   cmd = xstrdup(wp->shell);
  }
 }
 fe->value = parse_window_name(cmd);
 free(cmd);
}
