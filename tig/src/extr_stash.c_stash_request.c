
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int argv; TYPE_1__* env; int ref; } ;
struct line {int dummy; } ;
typedef enum request { ____Placeholder_request } request ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int stash; } ;


 char* DIFF_ARGS ;
 int OPEN_DEFAULT ;
 int OPEN_PREPARED ;
 int OPEN_SPLIT ;

 int REQ_NONE ;

 int argv_format (TYPE_1__*,int *,char const**,int,int) ;
 char* diff_context_arg () ;
 struct view diff_view ;
 struct view** display ;
 char* encoding_arg ;
 char* ignore_space_arg () ;
 int main_request (struct view*,int,struct line*) ;
 int maximize_view (struct view*,int) ;
 int open_view (struct view*,struct view*,int) ;
 int report (char*) ;
 char* show_notes_arg () ;
 int strcmp (int ,int ) ;
 scalar_t__ view_is_displayed (struct view*) ;

enum request
stash_request(struct view *view, enum request request, struct line *line)
{
 enum open_flags flags = (view_is_displayed(view) && request != 128)
    ? OPEN_SPLIT : OPEN_DEFAULT;
 struct view *diff = &diff_view;

 switch (request) {
 case 128:
 case 129:
  if (view_is_displayed(view) && display[0] != view)
   maximize_view(view, 1);

  if (!view_is_displayed(diff) ||
      strcmp(view->env->stash, diff->ref)) {
   const char *diff_argv[] = {
    "git", "stash", "show", encoding_arg, "--pretty=fuller",
     "--root", "--patch-with-stat",
     show_notes_arg(), diff_context_arg(),
     ignore_space_arg(), DIFF_ARGS,
     "--no-color", "%(stash)", ((void*)0)
   };

   if (!argv_format(diff_view.env, &diff_view.argv, diff_argv, 0, 0))
    report("Failed to format argument");
   else
    open_view(view, &diff_view, flags | OPEN_PREPARED);
  }
  return REQ_NONE;

 default:
  return main_request(view, request, line);
 }
}
