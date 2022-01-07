
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__ lines; char* vid; scalar_t__ pipe; int ** argv; struct diff_state* private; } ;
struct diff_state {int adding_describe_ref; } ;
struct buffer {int data; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int OPEN_EXTRA ;
 int SUCCESS ;
 int argv_size (int **) ;
 int begin_update (struct view*,int *,char const**,int ) ;
 int diff_common_read (struct view*,int ,struct diff_state*) ;
 int diff_done_highlight (struct diff_state*) ;
 int diff_read_describe (struct view*,struct buffer*,struct diff_state*) ;
 int diff_restore_line (struct view*,struct diff_state*) ;
 int free (void*) ;
 int get_status_message (int) ;
 int io_done (scalar_t__) ;
 int opt_diff_highlight ;
 int ** opt_file_args ;
 int ref_list_contains_tag (char*) ;
 int report (char*,int ) ;
 int strcmp (int *,char*) ;
 scalar_t__ view_exec (struct view*,int ) ;

__attribute__((used)) static bool
diff_read(struct view *view, struct buffer *buf, bool force_stop)
{
 struct diff_state *state = view->private;

 if (state->adding_describe_ref)
  return diff_read_describe(view, buf, state);

 if (!buf) {
  if (!diff_done_highlight(state)) {
   report("Failed run the diff-highlight program: %s", opt_diff_highlight);
   return 0;
  }


  if (view->lines == 0 && opt_file_args) {
   int pos = argv_size(view->argv)
    - argv_size(opt_file_args) - 1;

   if (pos > 0 && !strcmp(view->argv[pos], "--")) {
    for (; view->argv[pos]; pos++) {
     free((void *) view->argv[pos]);
     view->argv[pos] = ((void*)0);
    }

    if (view->pipe)
     io_done(view->pipe);
    if (view_exec(view, 0))
     return 0;
   }
  }

  diff_restore_line(view, state);

  if (!state->adding_describe_ref && !ref_list_contains_tag(view->vid)) {
   const char *describe_argv[] = { "git", "describe", view->vid, ((void*)0) };
   enum status_code code = begin_update(view, ((void*)0), describe_argv, OPEN_EXTRA);

   if (code != SUCCESS) {
    report("Failed to load describe data: %s", get_status_message(code));
    return 1;
   }

   state->adding_describe_ref = 1;
   return 0;
  }

  return 1;
 }

 return diff_common_read(view, buf->data, state);
}
