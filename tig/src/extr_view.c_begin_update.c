
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {char const* dir; TYPE_1__* ops; int io; int name; scalar_t__* argv; int prev; int env; int unrefreshable; scalar_t__ pipe; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int id; } ;


 int OPEN_EXTRA ;
 int OPEN_PREPARED ;
 int OPEN_REFRESH ;
 int OPEN_STDIN ;
 int SUCCESS ;
 int VIEW_FILE_FILTER ;
 int argv_format (int ,scalar_t__**,char const**,int,int) ;
 int die (char*) ;
 int end_update (struct view*,int) ;
 int error (char*,int ) ;
 int io_done (scalar_t__) ;
 int io_open (int *,char*,char*) ;
 scalar_t__ open_from_stdin (int) ;
 int open_in_pager_mode (int) ;
 scalar_t__ opt_file_filter ;
 int setup_update (struct view*,int ) ;
 int view_exec (struct view*,int) ;
 int view_has_flags (struct view*,int ) ;
 scalar_t__ view_no_refresh (struct view*,int) ;

enum status_code
begin_update(struct view *view, const char *dir, const char **argv, enum open_flags flags)
{
 bool extra = !!(flags & (OPEN_EXTRA));
 bool refresh = flags & (OPEN_REFRESH | OPEN_PREPARED | OPEN_STDIN);

 if (view_no_refresh(view, flags))
  return SUCCESS;

 if (view->pipe) {
  if (extra)
   io_done(view->pipe);
  else
   end_update(view, 1);
 }

 view->unrefreshable = open_in_pager_mode(flags);

 if (!refresh && argv) {
  bool file_filter = !view_has_flags(view, VIEW_FILE_FILTER) || opt_file_filter;

  view->dir = dir;
  if (!argv_format(view->env, &view->argv, argv, !view->prev, file_filter))
   return error("Failed to format %s arguments", view->name);
 }

 if (view->argv && view->argv[0] &&
     !view_exec(view, flags))
  return error("Failed to open %s view", view->name);

 if (open_from_stdin(flags)) {
  if (!io_open(&view->io, "%s", ""))
   die("Failed to open stdin");
 }

 if (!extra)
  setup_update(view, view->ops->id);

 return SUCCESS;
}
