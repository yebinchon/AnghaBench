
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int line; int vid; TYPE_1__* env; struct blob_state* private; } ;
struct line {int dummy; } ;
struct blob_state {int file; int commit; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_2__ {struct line* goto_lineno; int ref; int file; } ;



 int REQ_NONE ;


 int open_blob_editor (int ,int *,int ) ;
 int open_editor (int ,int ) ;
 int pager_request (struct view*,int,struct line*) ;
 int refresh_view (struct view*) ;
 int report (char*) ;
 int string_ncopy (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static enum request
blob_request(struct view *view, enum request request, struct line *line)
{
 struct blob_state *state = view->private;

 switch (request) {
 case 129:
  if (!state->file) {
   report("Cannot reload immutable blob");
  } else {
   string_ncopy(view->env->file, state->file, strlen(state->file));
   refresh_view(view);
  }
  return REQ_NONE;

 case 128:
  string_ncopy(view->env->ref, state->commit, strlen(state->commit));
  view->env->goto_lineno = line - view->line;
  return request;

 case 130:
  if (state->file)
   open_editor(state->file, (line - view->line) + 1);
  else
   open_blob_editor(view->vid, ((void*)0), (line - view->line) + 1);
  return REQ_NONE;

 default:
  return pager_request(view, request, line);
 }
}
