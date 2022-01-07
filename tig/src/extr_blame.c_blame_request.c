
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int ref; int pipe; } ;
struct line {struct blame* data; } ;
struct blame {TYPE_1__* commit; } ;
typedef enum request { ____Placeholder_request } request ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int * parent_id; int filename; int id; } ;


 char const* GIT_DIFF_BLAME (int ,int ,int ,int ) ;
 char const* GIT_DIFF_BLAME_NO_PARENT (int ,int ,int ,int ) ;
 int NULL_ID ;
 int OPEN_DEFAULT ;
 int OPEN_SPLIT ;


 int REQ_NONE ;


 int blame_go_back (struct view*) ;
 int blame_go_forward (struct view*,struct blame*,int) ;
 int check_blame_commit (struct blame*,int) ;
 int diff_context_arg () ;
 struct view diff_view ;
 int encoding_arg ;
 int ignore_space_arg () ;
 int open_argv (struct view*,struct view*,char const**,int *,int) ;
 int open_diff_view (struct view*,int) ;
 int strcmp (int ,int ) ;
 int string_copy_rev (int ,int ) ;
 int string_rev_is_null (int ) ;
 scalar_t__ view_is_displayed (struct view*) ;

__attribute__((used)) static enum request
blame_request(struct view *view, enum request request, struct line *line)
{
 enum open_flags flags = view_is_displayed(view) ? OPEN_SPLIT : OPEN_DEFAULT;
 struct blame *blame = line->data;
 struct view *diff = &diff_view;

 switch (request) {
 case 128:
 case 129:
  if (!check_blame_commit(blame, request == 128))
   break;
  blame_go_forward(view, blame, request == 129);
  break;

 case 131:
  blame_go_back(view);
  break;

 case 130:
  if (!check_blame_commit(blame, 0))
   break;

  if (view_is_displayed(diff) &&
      !strcmp(blame->commit->id, diff->ref))
   break;

  if (string_rev_is_null(blame->commit->id)) {
   const char *diff_parent_argv[] = {
    GIT_DIFF_BLAME(encoding_arg,
     diff_context_arg(),
     ignore_space_arg(),
     blame->commit->filename)
   };
   const char *diff_no_parent_argv[] = {
    GIT_DIFF_BLAME_NO_PARENT(encoding_arg,
     diff_context_arg(),
     ignore_space_arg(),
     blame->commit->filename)
   };
   const char **diff_index_argv = *blame->commit->parent_id
    ? diff_parent_argv : diff_no_parent_argv;

   open_argv(view, diff, diff_index_argv, ((void*)0), flags);
   if (diff->pipe)
    string_copy_rev(diff->ref, NULL_ID);
  } else {
   open_diff_view(view, flags);
  }
  break;

 default:
  return request;
 }

 return REQ_NONE;
}
