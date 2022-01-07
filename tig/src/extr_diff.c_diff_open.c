
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int private; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 char* DIFF_ARGS ;
 int SUCCESS ;
 int begin_update (struct view*,int *,char const**,int) ;
 char* diff_context_arg () ;
 int diff_init_highlight (struct view*,int ) ;
 int diff_save_line (struct view*,int ,int) ;
 char* encoding_arg ;
 char* ignore_space_arg () ;
 char* show_notes_arg () ;
 char* use_mailmap_arg () ;

__attribute__((used)) static enum status_code
diff_open(struct view *view, enum open_flags flags)
{
 const char *diff_argv[] = {
  "git", "show", encoding_arg, "--pretty=fuller", "--root",
   "--patch-with-stat", use_mailmap_arg(),
   show_notes_arg(), diff_context_arg(), ignore_space_arg(),
   DIFF_ARGS, "%(cmdlineargs)", "--no-color", "%(commit)",
   "--", "%(fileargs)", ((void*)0)
 };
 enum status_code code;

 diff_save_line(view, view->private, flags);

 code = begin_update(view, ((void*)0), diff_argv, flags);
 if (code != SUCCESS)
  return code;

 return diff_init_highlight(view, view->private);
}
