
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int watch; struct main_state* private; } ;
struct main_state {int with_graph; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int WATCH_HEAD ;
 int WATCH_REFS ;
 int begin_update (struct view*,int *,char const**,int) ;
 int die (char*) ;
 char* encoding_arg ;
 scalar_t__ is_initial_view (struct view*) ;
 scalar_t__ opt_file_args ;
 int watch_register (int *,int) ;

__attribute__((used)) static enum status_code
reflog_open(struct view *view, enum open_flags flags)
{
 struct main_state *state = view->private;
 const char *reflog_argv[] = {
  "git", "reflog", "show", encoding_arg, "%(cmdlineargs)",
   "%(revargs)", "--no-color", "--pretty=raw", ((void*)0)
 };

 if (is_initial_view(view) && opt_file_args)
  die("No revisions match the given arguments.");

 state->with_graph = 0;
 watch_register(&view->watch, WATCH_HEAD | WATCH_REFS);
 return begin_update(view, ((void*)0), reflog_argv, flags);
}
