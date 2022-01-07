
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seat_attachment_config {int identifier; } ;
struct cmd_results {int dummy; } ;
struct TYPE_5__ {TYPE_1__* seat_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; scalar_t__ reading; } ;
struct TYPE_4__ {int attachments; } ;


 int CMD_DEFER ;
 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_3__* config ;
 int list_add (int ,struct seat_attachment_config*) ;
 struct seat_attachment_config* seat_attachment_config_new () ;
 int strdup (char*) ;

struct cmd_results *seat_cmd_attach(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "attach", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 if (!config->handler_context.seat_config) {
  return cmd_results_new(CMD_FAILURE, "No seat defined");
 }
 if (config->reading) {
  return cmd_results_new(CMD_DEFER, ((void*)0));
 }

 struct seat_attachment_config *attachment = seat_attachment_config_new();
 if (!attachment) {
  return cmd_results_new(CMD_FAILURE,
    "Failed to allocate seat attachment config");
 }
 attachment->identifier = strdup(argv[0]);
 list_add(config->handler_context.seat_config->attachments, attachment);

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
