
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int argv; int dir; int io; } ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
typedef enum io_flags { ____Placeholder_io_flags } io_flags ;


 int IO_RD ;
 int IO_RD_FORWARD_STDIN ;
 int IO_RD_WITH_STDERR ;
 int MAX (int ,int) ;
 int OPEN_FORWARD_STDIN ;
 int OPEN_SPLIT ;
 int OPEN_WITH_STDERR ;
 int apply_vertical_split (int) ;
 struct view** display ;
 int displayed_views () ;
 int getmaxyx (int ,int,int) ;
 int io_exec (int *,int ,int ,char* const*,int ,int) ;
 int opt_vertical_split ;
 int stdscr ;
 int string_format (char*,char*,int) ;
 scalar_t__ vertical_split_is_enabled (int ,int,int) ;

bool
view_exec(struct view *view, enum open_flags flags)
{
 char opt_env_lines[64] = "";
 char opt_env_columns[64] = "";
 char * const opt_env[] = { opt_env_lines, opt_env_columns, ((void*)0) };

 enum io_flags forward_stdin = (flags & OPEN_FORWARD_STDIN) ? IO_RD_FORWARD_STDIN : 0;
 enum io_flags with_stderr = (flags & OPEN_WITH_STDERR) ? IO_RD_WITH_STDERR : 0;
 enum io_flags io_flags = forward_stdin | with_stderr;

 int views = displayed_views();
 bool split = (views == 1 && !!(flags & OPEN_SPLIT)) || views == 2;
 int height, width;

 getmaxyx(stdscr, height, width);
 if (split && vertical_split_is_enabled(opt_vertical_split, height, width)) {
  bool is_base_view = display[0] == view;
  int split_width = apply_vertical_split(width);

  if (is_base_view)
   width -= split_width;
  else
   width = split_width - 1;
 }

 string_format(opt_env_columns, "COLUMNS=%d", MAX(0, width));
 string_format(opt_env_lines, "LINES=%d", height);

 return io_exec(&view->io, IO_RD, view->dir, opt_env, view->argv, io_flags);
}
