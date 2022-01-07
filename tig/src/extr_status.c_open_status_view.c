
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int OPEN_RELOAD ;
 int open_view (struct view*,int *,int) ;
 int show_untracked_only ;
 int status_view ;

void
open_status_view(struct view *prev, bool untracked_only, enum open_flags flags)
{
 if (show_untracked_only != untracked_only) {
  show_untracked_only = untracked_only;
  flags |= OPEN_RELOAD;
 }
 open_view(prev, &status_view, flags);
}
