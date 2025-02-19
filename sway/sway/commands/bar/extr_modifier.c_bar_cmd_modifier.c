
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct cmd_results {int dummy; } ;
struct TYPE_7__ {int length; char** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_8__ {TYPE_1__* current_bar; } ;
struct TYPE_6__ {int modifier; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_5__* config ;
 int get_modifier_mask_by_name (char*) ;
 int list_free_items_and_destroy (TYPE_2__*) ;
 TYPE_2__* split_string (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int sway_log (int ,char*,char*) ;

struct cmd_results *bar_cmd_modifier(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "modifier", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 uint32_t mod = 0;
 if (strcmp(argv[0], "none") != 0) {
  list_t *split = split_string(argv[0], "+");
  for (int i = 0; i < split->length; ++i) {
   uint32_t tmp_mod;
   if ((tmp_mod = get_modifier_mask_by_name(split->items[i])) > 0) {
    mod |= tmp_mod;
   } else if (strcmp(split->items[i], "none") == 0) {
    error = cmd_results_new(CMD_INVALID,
      "none cannot be used along with other modifiers");
    list_free_items_and_destroy(split);
    return error;
   } else {
    error = cmd_results_new(CMD_INVALID,
     "Unknown modifier '%s'", (char *)split->items[i]);
    list_free_items_and_destroy(split);
    return error;
   }
  }
  list_free_items_and_destroy(split);
 }
 config->current_bar->modifier = mod;
 sway_log(SWAY_DEBUG,
   "Show/Hide the bar when pressing '%s' in hide mode.", argv[0]);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
