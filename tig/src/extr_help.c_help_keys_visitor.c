
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {struct help_state* private; } ;
struct run_request {int dummy; } ;
struct request_info {int name; } ;
struct keymap {scalar_t__ hidden; } ;
struct help_state {void* name_width; void* keys_width; } ;
struct help_request_iterator {struct view* view; struct keymap* keymap; } ;
struct TYPE_2__ {char const* text; struct request_info const* req_info; } ;
struct help {int request; TYPE_1__ data; } ;
typedef enum request { ____Placeholder_request } request ;


 int LINE_DEFAULT ;
 int LINE_HELP_GROUP ;
 int LINE_SECTION ;
 void* MAX (void*,int ) ;
 int add_help_line (struct view*,struct help**,struct keymap*,int ) ;
 char const* enum_name (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static bool
help_keys_visitor(void *data, const char *group, struct keymap *keymap,
    enum request request, const char *key,
    const struct request_info *req_info, const struct run_request *run_req)
{
 struct help_request_iterator *iterator = data;
 struct view *view = iterator->view;
 struct help_state *state = view->private;
 struct help *help;

 if (iterator->keymap != keymap) {
  iterator->keymap = keymap;
  if (!add_help_line(iterator->view, &help, keymap, LINE_SECTION))
   return 0;
 }

 if (keymap->hidden)
  return 1;

 if (group) {
  if (!add_help_line(iterator->view, &help, keymap, LINE_HELP_GROUP))
   return 0;
  help->data.text = group;
 }

 if (!add_help_line(view, &help, keymap, LINE_DEFAULT))
  return 0;

 state->keys_width = MAX(state->keys_width, strlen(key));
 help->request = request;

 if (req_info) {
  state->name_width = MAX(state->name_width, strlen(enum_name(req_info->name)));
  help->data.req_info = req_info;
 }

 return 1;
}
