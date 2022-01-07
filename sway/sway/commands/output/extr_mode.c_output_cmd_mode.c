
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct output_config {int custom_mode; void* height; int refresh_rate; void* width; } ;
struct cmd_results {int dummy; } ;
struct TYPE_4__ {int argc; char** argv; } ;
struct TYPE_5__ {TYPE_1__ leftovers; struct output_config* output_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_3__* config ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strtof (char*,char**) ;
 void* strtol (char*,char**,int) ;

struct cmd_results *output_cmd_mode(int argc, char **argv) {
 if (!config->handler_context.output_config) {
  return cmd_results_new(CMD_FAILURE, "Missing output config");
 }
 if (!argc) {
  return cmd_results_new(CMD_INVALID, "Missing mode argument.");
 }

 struct output_config *output = config->handler_context.output_config;

 if (strcmp(argv[0], "--custom") == 0) {
  argv++;
  argc--;
  output->custom_mode = 1;
 } else {
  output->custom_mode = 0;
 }

 char *end;
 output->width = strtol(*argv, &end, 10);
 if (*end) {

  if (*end != 'x') {
   return cmd_results_new(CMD_INVALID, "Invalid mode width.");
  }
  ++end;
  output->height = strtol(end, &end, 10);
  if (*end) {
   if (*end != '@') {
    return cmd_results_new(CMD_INVALID, "Invalid mode height.");
   }
   ++end;
   output->refresh_rate = strtof(end, &end);
   if (strcasecmp("Hz", end) != 0) {
    return cmd_results_new(CMD_INVALID,
     "Invalid mode refresh rate.");
   }
  }
 } else {

  argc--; argv++;
  if (!argc) {
   return cmd_results_new(CMD_INVALID,
    "Missing mode argument (height).");
  }
  output->height = strtol(*argv, &end, 10);
  if (*end) {
   return cmd_results_new(CMD_INVALID, "Invalid mode height.");
  }
 }

 config->handler_context.leftovers.argc = argc - 1;
 config->handler_context.leftovers.argv = argv + 1;
 return ((void*)0);
}
