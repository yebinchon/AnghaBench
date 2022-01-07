
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct view {scalar_t__ lines; TYPE_2__* env; TYPE_1__* ops; int vid; int pos; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_6__ {char* prefix; int exec_dir; } ;
struct TYPE_5__ {scalar_t__* directory; int commit; } ;
struct TYPE_4__ {int id; } ;


 int begin_update (struct view*,int ,char const**,int) ;
 int error (char*) ;
 int push_tree_stack_entry (struct view*,char*,int *) ;
 TYPE_3__ repo ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ string_rev_is_null (int ) ;

__attribute__((used)) static enum status_code
tree_open(struct view *view, enum open_flags flags)
{
 static const char *tree_argv[] = {
  "git", "ls-tree", "-l", "%(commit)", "--", "%(directory)", ((void*)0)
 };

 if (string_rev_is_null(view->env->commit))
  return error("No tree exists for this commit");

 if (view->lines == 0 && repo.prefix[0]) {
  char *pos = repo.prefix;

  while (pos && *pos) {
   char *end = strchr(pos, '/');

   if (end)
    *end = 0;
   push_tree_stack_entry(view, pos, &view->pos);
   pos = end;
   if (end) {
    *end = '/';
    pos++;
   }
  }

 } else if (strcmp(view->vid, view->ops->id)) {
  view->env->directory[0] = 0;
 }

 return begin_update(view, repo.exec_dir, tree_argv, flags);
}
