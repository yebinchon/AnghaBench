
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {TYPE_2__* ops; int ref; TYPE_1__* env; } ;
struct line {scalar_t__ type; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {scalar_t__* blob; scalar_t__ goto_lineno; scalar_t__ lineno; int file; } ;


 scalar_t__ LINE_DIFF_STAT ;
 int REQ_ENTER ;
 struct line* diff_find_header_from_stat (struct view*,struct line*) ;
 scalar_t__ diff_get_lineno (struct view*,struct line*) ;
 char* diff_get_pathname (struct view*,struct line*) ;
 char const* get_view_key (struct view*,int ) ;
 int pager_select (struct view*,struct line*) ;
 int string_format (int ,char*,char const*,...) ;
 int string_ncopy (int ,int ,int ) ;
 int strlen (int ) ;

void
diff_common_select(struct view *view, struct line *line, const char *changes_msg)
{
 if (line->type == LINE_DIFF_STAT) {
  struct line *header = diff_find_header_from_stat(view, line);
  if (header) {
   const char *file = diff_get_pathname(view, header);

   if (file) {
    string_format(view->env->file, "%s", file);
    view->env->lineno = view->env->goto_lineno = 0;
    view->env->blob[0] = 0;
   }
  }

  string_format(view->ref, "Press '%s' to jump to file diff",
         get_view_key(view, REQ_ENTER));
 } else {
  const char *file = diff_get_pathname(view, line);

  if (file) {
   if (changes_msg)
    string_format(view->ref, "%s to '%s'", changes_msg, file);
   string_format(view->env->file, "%s", file);
   view->env->lineno = view->env->goto_lineno = diff_get_lineno(view, line);
   view->env->blob[0] = 0;
  } else {
   string_ncopy(view->ref, view->ops->id, strlen(view->ops->id));
   pager_select(view, line);
  }
 }
}
