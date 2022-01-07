
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* env; int ref; } ;
struct line {scalar_t__ type; } ;
struct TYPE_2__ {int commit; int text; } ;


 scalar_t__ LINE_COMMIT ;
 int VIEW_NO_REF ;
 char* box_text (struct line*) ;
 int string_copy_rev (int ,int ) ;
 int string_copy_rev_from_commit_line (int ,char const*) ;
 int string_ncopy (int ,char const*,int ) ;
 int strlen (char const*) ;
 int view_has_flags (struct view*,int ) ;

void
pager_select(struct view *view, struct line *line)
{
 const char *text = box_text(line);

 string_ncopy(view->env->text, text, strlen(text));

 if (line->type == LINE_COMMIT) {
  string_copy_rev_from_commit_line(view->env->commit, text);
  if (!view_has_flags(view, VIEW_NO_REF))
   string_copy_rev(view->ref, view->env->commit);
 }
}
