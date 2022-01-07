
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int argv; int argc; } ;
struct format_tree {struct window_pane* wp; } ;
struct format_entry {int value; } ;


 int cmd_stringify_argv (int ,int ) ;

__attribute__((used)) static void
format_cb_start_command(struct format_tree *ft, struct format_entry *fe)
{
 struct window_pane *wp = ft->wp;

 if (wp == ((void*)0))
  return;

 fe->value = cmd_stringify_argv(wp->argc, wp->argv);
}
