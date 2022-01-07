
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int configured; int matrix; } ;
struct input_config {TYPE_1__ calibration_matrix; } ;
struct cmd_results {int dummy; } ;
struct TYPE_5__ {struct input_config* input_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_3__* config ;
 scalar_t__ isnan (float) ;
 int memcpy (int ,float*,int) ;
 float parse_float (char*) ;

struct cmd_results *input_cmd_calibration_matrix(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "calibration_matrix", EXPECTED_EQUAL_TO, 6))) {
  return error;
 }
 struct input_config *ic = config->handler_context.input_config;
 if (!ic) {
  return cmd_results_new(CMD_FAILURE, "No input device defined.");
 }

 float parsed[6];
 for (int i = 0; i < argc; ++i) {
  char *item = argv[i];
  float x = parse_float(item);
  if (isnan(x)) {
   return cmd_results_new(CMD_FAILURE, "calibration_matrix: unable to parse float: %s", item);
  }
  parsed[i] = x;
 }

 ic->calibration_matrix.configured = 1;
 memcpy(ic->calibration_matrix.matrix, parsed, sizeof(ic->calibration_matrix.matrix));

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
