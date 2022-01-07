
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int watch; struct main_state* private; } ;
struct main_state {int with_graph; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int OPEN_RELOAD ;
 int WATCH_STASH ;
 int begin_update (struct view*,int *,char const**,int) ;

 int watch_register (int *,int ) ;

__attribute__((used)) static enum status_code
stash_open(struct view *view, enum open_flags flags)
{
 static const char *stash_argv[] = { "git", "stash", "list",
  128, "--no-color", "--pretty=raw", ((void*)0) };
 struct main_state *state = view->private;

 state->with_graph = 0;
 watch_register(&view->watch, WATCH_STASH);
 return begin_update(view, ((void*)0), stash_argv, flags | OPEN_RELOAD);
}
