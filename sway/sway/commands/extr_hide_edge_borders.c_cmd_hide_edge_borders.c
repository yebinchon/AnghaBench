
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int hide_lone_tab; int hide_edge_borders_smart; void* hide_edge_borders; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int ESMART_NO_GAPS ;
 int ESMART_ON ;
 int EXPECTED_AT_LEAST ;
 void* E_BOTH ;
 void* E_HORIZONTAL ;
 void* E_NONE ;
 void* E_VERTICAL ;
 int arrange_root () ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char const*) ;
 TYPE_1__* config ;
 scalar_t__ strcmp (char*,char*) ;

struct cmd_results *cmd_hide_edge_borders(int argc, char **argv) {
 const char *expected_syntax = "Expected 'hide_edge_borders [--i3] "
  "none|vertical|horizontal|both|smart|smart_no_gaps";

 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "hide_edge_borders", EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 bool hide_lone_tab = 0;
 if (strcmp(*argv, "--i3") == 0) {
  hide_lone_tab = 1;
  ++argv;
  --argc;
 }

 if (!argc) {
  return cmd_results_new(CMD_INVALID, expected_syntax);
 }

 if (strcmp(argv[0], "none") == 0) {
  config->hide_edge_borders = E_NONE;
 } else if (strcmp(argv[0], "vertical") == 0) {
  config->hide_edge_borders = E_VERTICAL;
 } else if (strcmp(argv[0], "horizontal") == 0) {
  config->hide_edge_borders = E_HORIZONTAL;
 } else if (strcmp(argv[0], "both") == 0) {
  config->hide_edge_borders = E_BOTH;
 } else if (strcmp(argv[0], "smart") == 0) {
  config->hide_edge_borders = E_NONE;
  config->hide_edge_borders_smart = ESMART_ON;
 } else if (strcmp(argv[0], "smart_no_gaps") == 0) {
  config->hide_edge_borders = E_NONE;
  config->hide_edge_borders_smart = ESMART_NO_GAPS;
 } else {
  return cmd_results_new(CMD_INVALID, expected_syntax);
 }
 config->hide_lone_tab = hide_lone_tab;

 arrange_root();

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
