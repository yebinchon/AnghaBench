
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int hide_edge_borders_smart; } ;


 int CMD_SUCCESS ;
 int ESMART_NO_GAPS ;
 int ESMART_OFF ;
 int ESMART_ON ;
 int EXPECTED_EQUAL_TO ;
 int arrange_root () ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 scalar_t__ parse_boolean (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

struct cmd_results *cmd_smart_borders(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "smart_borders", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 if (strcmp(argv[0], "no_gaps") == 0) {
  config->hide_edge_borders_smart = ESMART_NO_GAPS;
 } else {
  config->hide_edge_borders_smart = parse_boolean(argv[0], 1) ?
   ESMART_ON : ESMART_OFF;
 }

 arrange_root();

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
