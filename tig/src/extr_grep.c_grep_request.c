
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {TYPE_1__* env; int pos; struct view* prev; struct view* parent; struct grep_state* private; } ;
struct line {int dummy; } ;
struct grep_state {char const* last_file; } ;
struct grep_line {char const* file; int lineno; int * text; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_4__ {char const* exec_dir; } ;
struct TYPE_3__ {int goto_lineno; int * ref; int * blob; } ;


 int OPEN_RELOAD ;
 int OPEN_SPLIT ;


 int REQ_NONE ;


 struct view blob_view ;
 int clear_position (int *) ;
 struct grep_line* grep_get_line (struct line*) ;
 int open_argv (struct view*,struct view*,char const**,char const*,int) ;
 int open_editor (char const*,int ) ;
 int refresh_view (struct view*) ;
 TYPE_2__ repo ;
 int select_view_line (struct view*,int ) ;
 int update_view_title (struct view*) ;
 int view_is_displayed (struct view*) ;

__attribute__((used)) static enum request
grep_request(struct view *view, enum request request, struct line *line)
{
 struct grep_state *state = view->private;
 struct grep_line *grep = grep_get_line(line);
 struct view *file_view = &blob_view;

 switch (request) {
 case 129:
  refresh_view(view);
  return REQ_NONE;

 case 130:
  if (!*grep->file)
   return REQ_NONE;
  if (file_view->parent == view && file_view->prev == view &&
      state->last_file == grep->file && view_is_displayed(file_view)) {
   if (*grep->text) {
    select_view_line(file_view, grep->lineno);
    update_view_title(file_view);
   }

  } else {
   const char *file_argv[] = { repo.exec_dir, grep->file, ((void*)0) };

   clear_position(&file_view->pos);
   view->env->goto_lineno = grep->lineno;
   view->env->blob[0] = 0;
   open_argv(view, file_view, file_argv, repo.exec_dir, OPEN_SPLIT | OPEN_RELOAD);
  }
  state->last_file = grep->file;
  return REQ_NONE;

 case 131:
  if (!*grep->file)
   return request;
  open_editor(grep->file, grep->lineno + 1);
  return REQ_NONE;

 case 128:
  view->env->ref[0] = 0;
  view->env->goto_lineno = grep->lineno;
  return request;

 default:
  return request;
 }
}
