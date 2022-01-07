
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int smart_gaps; } ;


 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int arrange_root () ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 int parse_boolean (char*,int ) ;

struct cmd_results *cmd_smart_gaps(int argc, char **argv) {
 struct cmd_results *error = checkarg(argc, "smart_gaps", EXPECTED_AT_LEAST, 1);

 if (error) {
  return error;
 }

 config->smart_gaps = parse_boolean(argv[0], config->smart_gaps);

 arrange_root();

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
