
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {char const* dir; int io; int name; int argv; scalar_t__ pipe; } ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int OPEN_PREPARED ;
 int argv_copy (int *,char const**) ;
 int end_update (struct view*,int) ;
 int io_strerror (int *) ;
 int open_view (struct view*,struct view*,int) ;
 int report (char*,int ,int ) ;

void
open_argv(struct view *prev, struct view *view, const char *argv[], const char *dir, enum open_flags flags)
{
 if (view->pipe)
  end_update(view, 1);
 view->dir = dir;

 if (!argv_copy(&view->argv, argv)) {
  report("Failed to open %s view: %s", view->name, io_strerror(&view->io));
 } else {
  open_view(prev, view, flags | OPEN_PREPARED);
 }
}
