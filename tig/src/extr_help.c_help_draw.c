
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {struct help_state* private; } ;
struct run_request {scalar_t__* argv; } ;
struct request_info {scalar_t__ request; int help; int name; } ;
struct line {scalar_t__ type; struct help* data; } ;
struct keymap {int name; scalar_t__ hidden; } ;
struct help_state {scalar_t__ name_width; scalar_t__ keys_width; } ;
struct TYPE_2__ {struct request_info* req_info; int text; } ;
struct help {scalar_t__ request; TYPE_1__ data; struct keymap* keymap; } ;


 int ALIGN_LEFT ;
 int ALIGN_RIGHT ;
 scalar_t__ LINE_DEFAULT ;
 scalar_t__ LINE_HELP_ACTION ;
 scalar_t__ LINE_HELP_GROUP ;
 scalar_t__ LINE_SECTION ;
 scalar_t__ REQ_RUN_REQUESTS ;
 scalar_t__ draw_field (struct view*,scalar_t__,char const*,scalar_t__,int ,int) ;
 scalar_t__ draw_formatted (struct view*,scalar_t__,char*,...) ;
 int draw_text (struct view*,scalar_t__,int ) ;
 char const* enum_name (int ) ;
 char* format_run_request_flags (struct run_request*) ;
 char* get_keys (struct keymap const*,scalar_t__,int) ;
 struct run_request* get_run_request (scalar_t__) ;

__attribute__((used)) static bool
help_draw(struct view *view, struct line *line, unsigned int lineno)
{
 struct help *help = line->data;
 const struct keymap *keymap = help->keymap;
 struct help_state *state = view->private;

 if (line->type == LINE_SECTION) {
  draw_formatted(view, line->type, "[%c] %s bindings",
          keymap->hidden ? '+' : '-', keymap->name);

 } else if (line->type == LINE_HELP_GROUP || !keymap) {
  draw_text(view, line->type, help->data.text);

 } else if (help->request > REQ_RUN_REQUESTS) {
  struct run_request *req = get_run_request(help->request);
  const char *key = get_keys(keymap, help->request, 1);
  const char *sep = format_run_request_flags(req);
  int i;

  if (draw_field(view, LINE_DEFAULT, key, state->keys_width + 2, ALIGN_RIGHT, 0))
   return 1;

  for (i = 0; req->argv[i]; i++) {
   if (draw_formatted(view, LINE_HELP_ACTION, "%s%s", sep, req->argv[i]))
    return 1;
   sep = " ";
  }

 } else {
  const struct request_info *req_info = help->data.req_info;
  const char *key = get_keys(keymap, req_info->request, 1);

  if (draw_field(view, LINE_DEFAULT, key, state->keys_width + 2, ALIGN_RIGHT, 0))
   return 1;

  if (draw_field(view, LINE_HELP_ACTION, enum_name(req_info->name), state->name_width, ALIGN_LEFT, 0))
   return 1;

  draw_text(view, LINE_DEFAULT, req_info->help);
 }

 return 1;
}
