
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {float alpha; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_2__* config ;
 int container_damage_whole (struct sway_container*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 float strtof (char*,char**) ;

struct cmd_results *cmd_opacity(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "opacity", EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 struct sway_container *con = config->handler_context.container;

 if (con == ((void*)0)) {
  return cmd_results_new(CMD_FAILURE, "No current container");
 }

 char *err;
 float val = strtof(argc == 1 ? argv[0] : argv[1], &err);
 if (*err) {
  return cmd_results_new(CMD_INVALID, "opacity float invalid");
 }

 if (!strcasecmp(argv[0], "plus")) {
  val = con->alpha + val;
 } else if (!strcasecmp(argv[0], "minus")) {
  val = con->alpha - val;
 } else if (argc > 1 && strcasecmp(argv[0], "set")) {
  return cmd_results_new(CMD_INVALID,
    "Expected: set|plus|minus <0..1>: %s", argv[0]);
 }

 if (val < 0 || val > 1) {
  return cmd_results_new(CMD_FAILURE, "opacity value out of bounds");
 }

 con->alpha = val;
 container_damage_whole(con);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
