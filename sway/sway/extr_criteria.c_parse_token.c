
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_view {TYPE_2__* container; } ;
struct sway_seat {int dummy; } ;
struct sway_container {struct sway_view* view; } ;
struct criteria {int floating; int tiling; char urgent; int workspace; int window_type; int window_role; int instance; void* id; int class; int con_mark; void* con_id; int app_id; int shell; int title; } ;
typedef enum criteria_token { ____Placeholder_criteria_token } criteria_token ;
struct TYPE_3__ {void* id; } ;
struct TYPE_4__ {TYPE_1__ node; } ;
 scalar_t__ error ;
 struct sway_seat* input_manager_current_seat () ;
 scalar_t__ malloc (int) ;
 int parse_window_type (char*) ;
 int pattern_create (int *,char*) ;
 struct sway_container* seat_get_focused_container (struct sway_seat*) ;
 int snprintf (scalar_t__,int,char const*,char*) ;
 int strcmp (char*,char*) ;
 scalar_t__ strdup (char*) ;
 int strlen (char const*) ;
 void* strtoul (char*,char**,int) ;
 int token_from_name (char*) ;

__attribute__((used)) static bool parse_token(struct criteria *criteria, char *name, char *value) {
 enum criteria_token token = token_from_name(name);
 if (token == 135) {
  const char *fmt = "Token '%s' is not recognized";
  int len = strlen(fmt) + strlen(name) - 1;
  error = malloc(len);
  snprintf(error, len, fmt, name);
  return 0;
 }


 if (!value && token != 138 && token != 133) {
  const char *fmt = "Token '%s' requires a value";
  int len = strlen(fmt) + strlen(name) - 1;
  error = malloc(len);
  snprintf(error, len, fmt, name);
  return 0;
 }

 char *endptr = ((void*)0);
 switch (token) {
 case 132:
  pattern_create(&criteria->title, value);
  break;
 case 134:
  pattern_create(&criteria->shell, value);
  break;
 case 142:
  pattern_create(&criteria->app_id, value);
  break;
 case 140:
  if (strcmp(value, "__focused__") == 0) {
   struct sway_seat *seat = input_manager_current_seat();
   struct sway_container *focus = seat_get_focused_container(seat);
   struct sway_view *view = focus ? focus->view : ((void*)0);
   criteria->con_id = view ? view->container->node.id : 0;
  } else {
   criteria->con_id = strtoul(value, &endptr, 10);
   if (*endptr != 0) {
    error = strdup("The value for 'con_id' should be '__focused__' or numeric");
   }
  }
  break;
 case 139:
  pattern_create(&criteria->con_mark, value);
  break;
 case 138:
  criteria->floating = 1;
  break;
 case 133:
  criteria->tiling = 1;
  break;
 case 131:
  if (strcmp(value, "latest") == 0 ||
    strcmp(value, "newest") == 0 ||
    strcmp(value, "last") == 0 ||
    strcmp(value, "recent") == 0) {
   criteria->urgent = 'l';
  } else if (strcmp(value, "oldest") == 0 ||
    strcmp(value, "first") == 0) {
   criteria->urgent = 'o';
  } else {
   error =
    strdup("The value for 'urgent' must be 'first', 'last', "
      "'latest', 'newest', 'oldest' or 'recent'");
  }
  break;
 case 128:
  pattern_create(&criteria->workspace, value);
  break;
 case 135:
  break;
 }

 if (error) {
  return 0;
 }

 return 1;
}
