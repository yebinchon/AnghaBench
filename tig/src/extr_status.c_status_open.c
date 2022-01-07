
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int watch; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {scalar_t__* worktree; scalar_t__ is_inside_work_tree; } ;


 int LINE_HEADER ;
 int LINE_STAT_STAGED ;
 int LINE_STAT_UNSTAGED ;
 int SUCCESS ;
 int WATCH_INDEX ;
 int add_line_nodata (struct view*,int ) ;
 int error (char*) ;
 scalar_t__ is_initial_commit () ;
 TYPE_1__ repo ;
 int reset_view (struct view*) ;
 int show_untracked_only ;
 char const** status_diff_files_argv ;
 char const** status_diff_index_argv ;
 char const** status_list_no_head_argv ;
 int status_read_untracked (struct view*) ;
 int status_restore (struct view*) ;
 int status_run (struct view*,char const**,char,int ) ;
 int status_update_onbranch () ;
 int update_index () ;
 int watch_register (int *,int ) ;

__attribute__((used)) static enum status_code
status_open(struct view *view, enum open_flags flags)
{
 const char **staged_argv = is_initial_commit() ?
  status_list_no_head_argv : status_diff_index_argv;
 char staged_status = staged_argv == status_list_no_head_argv ? 'A' : 0;

 if (!(repo.is_inside_work_tree || *repo.worktree))
  return error("The status view requires a working tree");

 reset_view(view);


 watch_register(&view->watch, WATCH_INDEX);

 add_line_nodata(view, LINE_HEADER);
 status_update_onbranch();

 update_index();

 if ((!show_untracked_only && !status_run(view, staged_argv, staged_status, LINE_STAT_STAGED)) ||
     (!show_untracked_only && !status_run(view, status_diff_files_argv, 0, LINE_STAT_UNSTAGED)) ||
     !status_read_untracked(view))
  return error("Failed to load status data");



 status_restore(view);
 return SUCCESS;
}
