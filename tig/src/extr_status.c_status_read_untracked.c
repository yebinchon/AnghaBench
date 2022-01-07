
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;


 int ARRAY_SIZE (char**) ;
 int LINE_STAT_NONE ;
 int LINE_STAT_UNTRACKED ;
 scalar_t__ add_line_nodata (struct view*,int ) ;
 scalar_t__ opt_status_show_untracked_dirs ;
 int opt_status_show_untracked_files ;
 char** status_list_other_argv ;
 int status_run (struct view*,char**,char,int ) ;

__attribute__((used)) static bool
status_read_untracked(struct view *view)
{
 if (!opt_status_show_untracked_files)
  return add_line_nodata(view, LINE_STAT_UNTRACKED)
      && add_line_nodata(view, LINE_STAT_NONE);

 status_list_other_argv[ARRAY_SIZE(status_list_other_argv) - 3] =
  opt_status_show_untracked_dirs ? ((void*)0) : "--directory";
 status_list_other_argv[ARRAY_SIZE(status_list_other_argv) - 2] =
  opt_status_show_untracked_dirs ? ((void*)0) : "--no-empty-directory";

 return status_run(view, status_list_other_argv, '?', LINE_STAT_UNTRACKED);
}
