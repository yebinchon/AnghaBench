
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* env; int ref; } ;
struct ref {int dummy; } ;
struct line {scalar_t__ type; struct commit* data; } ;
struct commit {int id; int title; } ;
struct TYPE_2__ {int commit; int status; } ;


 scalar_t__ LINE_STAT_STAGED ;
 scalar_t__ LINE_STAT_UNSTAGED ;
 scalar_t__ LINE_STAT_UNTRACKED ;
 struct ref* main_get_commit_refs (struct line*,struct commit*) ;
 int ref_update_env (TYPE_1__*,struct ref const*,int) ;
 int status_stage_info (int ,scalar_t__,int *) ;
 int string_copy_rev (int ,int ) ;
 int string_ncopy (int ,int ,int ) ;
 int strlen (int ) ;

void
main_select(struct view *view, struct line *line)
{
 struct commit *commit = line->data;

 if (line->type == LINE_STAT_STAGED || line->type == LINE_STAT_UNSTAGED || line->type == LINE_STAT_UNTRACKED) {
  string_ncopy(view->ref, commit->title, strlen(commit->title));
  status_stage_info(view->env->status, line->type, ((void*)0));
 } else {
  const struct ref *ref = main_get_commit_refs(line, commit);

  string_copy_rev(view->ref, commit->id);
  if (ref)
   ref_update_env(view->env, ref, 1);
 }
 string_copy_rev(view->env->commit, commit->id);
}
