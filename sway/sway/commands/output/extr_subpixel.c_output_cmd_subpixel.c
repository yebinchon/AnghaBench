
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct output_config {int subpixel; } ;
struct cmd_results {int dummy; } ;
typedef enum wl_output_subpixel { ____Placeholder_wl_output_subpixel } wl_output_subpixel ;
struct TYPE_4__ {int argc; char** argv; } ;
struct TYPE_5__ {TYPE_1__ leftovers; struct output_config* output_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR ;
 int WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB ;
 int WL_OUTPUT_SUBPIXEL_NONE ;
 int WL_OUTPUT_SUBPIXEL_VERTICAL_BGR ;
 int WL_OUTPUT_SUBPIXEL_VERTICAL_RGB ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_3__* config ;
 scalar_t__ strcmp (char*,char*) ;

struct cmd_results *output_cmd_subpixel(int argc, char **argv) {
 if (!config->handler_context.output_config) {
  return cmd_results_new(CMD_FAILURE, "Missing output config");
 }
 if (!argc) {
  return cmd_results_new(CMD_INVALID, "Missing subpixel argument.");
 }
 enum wl_output_subpixel subpixel;

 if (strcmp(*argv, "rgb") == 0) {
  subpixel = WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB;
 } else if (strcmp(*argv, "bgr") == 0) {
  subpixel = WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR;
 } else if (strcmp(*argv, "vrgb") == 0) {
  subpixel = WL_OUTPUT_SUBPIXEL_VERTICAL_RGB;
 } else if (strcmp(*argv, "vbgr") == 0) {
  subpixel = WL_OUTPUT_SUBPIXEL_VERTICAL_BGR;
 } else if (strcmp(*argv, "none") == 0) {
  subpixel = WL_OUTPUT_SUBPIXEL_NONE;
 } else {
  return cmd_results_new(CMD_INVALID, "Invalid output subpixel.");
 }

 struct output_config *oc = config->handler_context.output_config;
 config->handler_context.leftovers.argc = argc - 1;
 config->handler_context.leftovers.argv = argv + 1;

 oc->subpixel = subpixel;
 return ((void*)0);
}
