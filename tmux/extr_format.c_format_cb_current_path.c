
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int fd; } ;
struct format_tree {struct window_pane* wp; } ;
struct format_entry {int value; } ;


 char* osdep_get_cwd (int ) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
format_cb_current_path(struct format_tree *ft, struct format_entry *fe)
{
 struct window_pane *wp = ft->wp;
 char *cwd;

 if (wp == ((void*)0))
  return;

 cwd = osdep_get_cwd(wp->fd);
 if (cwd != ((void*)0))
  fe->value = xstrdup(cwd);
}
