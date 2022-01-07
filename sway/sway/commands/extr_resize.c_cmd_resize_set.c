
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {scalar_t__ width; scalar_t__ height; } ;
struct resize_amount {scalar_t__ unit; scalar_t__ amount; int member_0; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_INVALID ;
 int EXPECTED_AT_LEAST ;
 scalar_t__ RESIZE_UNIT_INVALID ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char const*) ;
 TYPE_2__* config ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 int parse_resize_amount (int,char**,struct resize_amount*) ;
 struct cmd_results* resize_set_floating (struct sway_container*,struct resize_amount*,struct resize_amount*) ;
 struct cmd_results* resize_set_tiled (struct sway_container*,struct resize_amount*,struct resize_amount*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static struct cmd_results *cmd_resize_set(int argc, char **argv) {
 struct cmd_results *error;
 if ((error = checkarg(argc, "resize", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 const char usage[] = "Expected 'resize set [width] <width> [px|ppt]' or "
  "'resize set height <height> [px|ppt]' or "
  "'resize set [width] <width> [px|ppt] [height] <height> [px|ppt]'";


 struct resize_amount width = {0};
 if (argc >= 2 && !strcmp(argv[0], "width") && strcmp(argv[1], "height")) {
  argc--; argv++;
 }
 if (strcmp(argv[0], "height")) {
  int num_consumed_args = parse_resize_amount(argc, argv, &width);
  argc -= num_consumed_args;
  argv += num_consumed_args;
  if (width.unit == RESIZE_UNIT_INVALID) {
   return cmd_results_new(CMD_INVALID, usage);
  }
 }


 struct resize_amount height = {0};
 if (argc) {
  if (argc >= 2 && !strcmp(argv[0], "height")) {
   argc--; argv++;
  }
  int num_consumed_args = parse_resize_amount(argc, argv, &height);
  if (argc > num_consumed_args) {
   return cmd_results_new(CMD_INVALID, usage);
  }
  if (width.unit == RESIZE_UNIT_INVALID) {
   return cmd_results_new(CMD_INVALID, usage);
  }
 }


 struct sway_container *con = config->handler_context.container;
 if (width.amount <= 0) {
  width.amount = con->width;
 }
 if (height.amount <= 0) {
  height.amount = con->height;
 }

 if (container_is_floating(con)) {
  return resize_set_floating(con, &width, &height);
 }
 return resize_set_tiled(con, &width, &height);
}
