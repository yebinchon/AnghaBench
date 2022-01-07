
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int tiling_drag; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 int parse_boolean (char*,int ) ;

struct cmd_results *cmd_tiling_drag(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "tiling_drag", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 config->tiling_drag = parse_boolean(argv[0], config->tiling_drag);

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
