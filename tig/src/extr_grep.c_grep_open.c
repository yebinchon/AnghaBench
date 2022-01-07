
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ display; } ;
struct TYPE_4__ {TYPE_1__ file_name; } ;
struct view_column {TYPE_2__ opt; } ;
struct view {struct grep_state* private; } ;
struct grep_state {int no_file_group; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int ERROR_OUT_OF_MEMORY ;
 scalar_t__ FILENAME_NO ;
 int VIEW_COLUMN_FILE_NAME ;
 int argv_append_array (char const***,int *) ;
 int argv_free (char const**) ;
 int begin_update (struct view*,int *,char const**,int) ;
 int free (char const**) ;
 struct view_column* get_view_column (struct view*,int ) ;
 int * grep_args ;
 int * grep_argv ;
 scalar_t__ is_initial_view (struct view*) ;
 int * opt_cmdline_args ;

__attribute__((used)) static enum status_code
grep_open(struct view *view, enum open_flags flags)
{
 struct grep_state *state = view->private;
 const char **argv = ((void*)0);
 enum status_code code;

 if (is_initial_view(view)) {
  grep_argv = opt_cmdline_args;
  opt_cmdline_args = ((void*)0);
 }

 if (!argv_append_array(&argv, grep_args) ||
     !argv_append_array(&argv, grep_argv))
  return ERROR_OUT_OF_MEMORY;

 {
  struct view_column *column = get_view_column(view, VIEW_COLUMN_FILE_NAME);

  state->no_file_group = !column || column->opt.file_name.display != FILENAME_NO;
 }

 code = begin_update(view, ((void*)0), argv, flags);
 argv_free(argv);
 free(argv);
 return code;
}
