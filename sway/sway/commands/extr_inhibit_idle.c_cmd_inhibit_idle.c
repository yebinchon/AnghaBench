
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_idle_inhibitor_v1 {int mode; } ;
struct sway_container {int view; } ;
struct cmd_results {int dummy; } ;
typedef enum sway_idle_inhibit_mode { ____Placeholder_sway_idle_inhibit_mode } sway_idle_inhibit_mode ;
struct TYPE_4__ {struct sway_container* container; } ;
struct TYPE_6__ {TYPE_1__ handler_context; } ;
struct TYPE_5__ {int idle_inhibit_manager_v1; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int INHIBIT_IDLE_FOCUS ;
 int INHIBIT_IDLE_FULLSCREEN ;
 int INHIBIT_IDLE_OPEN ;
 int INHIBIT_IDLE_VISIBLE ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_3__* config ;
 TYPE_2__ server ;
 scalar_t__ strcmp (char*,char*) ;
 int sway_idle_inhibit_v1_check_active (int ) ;
 int sway_idle_inhibit_v1_user_inhibitor_destroy (struct sway_idle_inhibitor_v1*) ;
 struct sway_idle_inhibitor_v1* sway_idle_inhibit_v1_user_inhibitor_for_view (int ) ;
 int sway_idle_inhibit_v1_user_inhibitor_register (int ,int) ;

struct cmd_results *cmd_inhibit_idle(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "inhibit_idle", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 struct sway_container *con = config->handler_context.container;
 if (!con || !con->view) {
  return cmd_results_new(CMD_INVALID,
    "Only views can have idle inhibitors");
 }

 bool clear = 0;
 enum sway_idle_inhibit_mode mode;
 if (strcmp(argv[0], "focus") == 0) {
  mode = INHIBIT_IDLE_FOCUS;
 } else if (strcmp(argv[0], "fullscreen") == 0) {
  mode = INHIBIT_IDLE_FULLSCREEN;
 } else if (strcmp(argv[0], "open") == 0) {
  mode = INHIBIT_IDLE_OPEN;
 } else if (strcmp(argv[0], "none") == 0) {
  clear = 1;
 } else if (strcmp(argv[0], "visible") == 0) {
  mode = INHIBIT_IDLE_VISIBLE;
 } else {
  return cmd_results_new(CMD_INVALID,
    "Expected `inhibit_idle focus|fullscreen|open|none|visible`");
 }

 struct sway_idle_inhibitor_v1 *inhibitor =
  sway_idle_inhibit_v1_user_inhibitor_for_view(con->view);
 if (inhibitor) {
  if (clear) {
   sway_idle_inhibit_v1_user_inhibitor_destroy(inhibitor);
  } else {
   inhibitor->mode = mode;
   sway_idle_inhibit_v1_check_active(server.idle_inhibit_manager_v1);
  }
 } else if (!clear) {
  sway_idle_inhibit_v1_user_inhibitor_register(con->view, mode);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
